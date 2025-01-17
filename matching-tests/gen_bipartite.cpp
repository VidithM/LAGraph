extern "C" {
   #include "LAGraph.h"
   #include "LAGraphX.h"
   #include "GraphBLAS.h"
}

#include <iostream>
#include <fstream>
#include <vector>
#include <queue>
#include <chrono>
#include <algorithm>
#include <random>
#include <cassert>
#include <cstring>

#define pb push_back
#define f first
#define s second

// #define dbg

char msg[1024];

#define OK(method)                                                  \
{                                                                   \
    int info = method ;                                             \
    if (!(info == GrB_SUCCESS || info != GrB_NO_VALUE))             \
    {                                                               \
        printf ("error! line %d info %d\n", __LINE__, info) ;       \
        printf ("msg is %s\n", msg) ;                               \
        abort ( ) ;                                                 \
    }                                                               \
}

using namespace std;
using ll = long long;

const int INF = 1e9;
const string HEADER = "%%MatrixMarket matrix coordinate pattern symmetric\n%%GraphBLAS type bool";
const string WEIGHTED_HEADER = "%%MatrixMarket matrix coordinate integer symmetric\n%%GraphBLAS type uint32_t";

vector<vector<int>> adj;
vector<vector<int>> capacity;


bool prefer_light = 0;
bool weighted = 0;
vector<int> deg;

bool cmp_basic_heavy(vector<ll> &a, vector<ll> &b){
    return (a[2] > b[2]);
}

bool cmp_basic_light(vector<ll> &a, vector<ll> &b){
    return (a[2] < b[2]);
}

bool cmp_with_degree_heavy(vector<ll> &a, vector<ll> &b){
    if(a[2] == b[2]){
        int sum_deg_a = max(deg[a[0]], deg[a[1]]);
        int sum_deg_b = max(deg[b[0]], deg[b[1]]);
        return (sum_deg_a < sum_deg_b);
    }
    return (weighted ? cmp_basic_heavy(a, b) : 0);
}

bool cmp_with_degree_light(vector<ll> &a, vector<ll> &b){
    if(a[2] == b[2]){
        int sum_deg_a = max(deg[a[0]], deg[a[1]]);
        int sum_deg_b = max(deg[b[0]], deg[b[1]]);
        return (sum_deg_a < sum_deg_b);
    }
    return (weighted ? cmp_basic_light(a, b) : 0);
}

int bfs(int s, int t, vector<int>& parent) {
    fill(parent.begin(), parent.end(), -1);
    parent[s] = -2;
    queue<pair<int, int>> q;
    q.push({s, INF});
    int ans = 0;
    while (!q.empty()) {
        int cur = q.front().first;
        int flow = q.front().second;
        q.pop();

        for (int next : adj[cur]) {
            if (parent[next] == -1 && capacity[cur][next]) {
                parent[next] = cur;
                int new_flow = min(flow, capacity[cur][next]);
                if (next == t)
                    ans = new_flow;
                q.push({next, new_flow});
            }
        }
    }

    return ans;
}

int maxflow(int s, int t, int n) {
    int flow = 0;
    vector<int> parent(n);
    int new_flow;

    while (new_flow = bfs(s, t, parent)) {
        flow += new_flow;
        int cur = t;
        #ifdef dbg
            cout << "chose path: " << endl;
        #endif
        vector<int> verts;
        verts.pb(t);
        while (cur != s) {
            int prev = parent[cur];
            verts.pb(prev);
            capacity[prev][cur] -= new_flow;
            capacity[cur][prev] += new_flow;
            cur = prev;
        }
        reverse(verts.begin(), verts.end());
        #ifdef dbg
            for(int vv : verts){
                cout << vv << " ";
            }   
            cout << endl;
        #endif
    }

    return flow;
}

int main(int argc, char **argv){
    int num_nodes = atoi(argv[1]);
    int sparse_factor = atoi(argv[2]);
    int naive = atoi(argv[3]);
    int perf = 0;
    if(naive){
        perf = atoi(argv[4]);
        weighted = atoi(argv[5]);
        if(weighted){
            prefer_light = atoi(argv[6]);
        }
    }

    int n = num_nodes / 2;
    int m = n;

    GrB_Matrix A = NULL;

    random_device rd;
    mt19937_64 gen(rd());
    uniform_int_distribution<ll> seed_distr(1, 1e15);

    GrB_Index *rows, *cols ;
    uint32_t *vals ;

    OK ( LAGraph_Init (msg)) ;
    OK ( LAGraph_Random_Init (msg)) ;

    OK ( LAGraph_Random_Matrix (&A, GrB_UINT32, n, m, (1.0 / sparse_factor), seed_distr(gen), msg)) ;

    GrB_Index nvals ;
    OK ( GrB_Matrix_nvals (&nvals, A)) ;

    OK ( LAGraph_Malloc ((void**)(&rows), nvals, sizeof(GrB_Index), msg)) ;
    OK ( LAGraph_Malloc ((void**)(&cols), nvals, sizeof(GrB_Index), msg)) ;
    OK ( LAGraph_Malloc ((void**)(&vals), nvals, sizeof(uint32_t), msg)) ;

    OK ( GrB_Matrix_extractTuples_UINT32 (rows, cols, vals, &nvals, A)) ;

    if(!naive){
        adj.resize(n + m + 2);
        capacity.resize(n + m + 2);
        for(int i = 0; i < n + m + 2; i++){
            capacity[i].resize(n + m + 2);
            fill(capacity[i].begin(), capacity[i].end(), 0);
        }
    }
    deg.resize(n + m + 2);
    fill(deg.begin(), deg.end(), 0);

    vector<vector<ll>> edges;

    for(GrB_Index i = 0; i < nvals; i++){
        ll u = rows[i] + 1;
        ll v = cols[i] + 1 + n;
        ll weight = vals[i];
        // cout << "adding edge " << u << " " << v << " " << weight << endl;
        assert(weight >= 0);
        deg[u]++;
        deg[v]++;
        edges.pb(vector<ll> {u, v, weight});
        if(!naive){
            adj[u].pb(v);
            adj[v].pb(u);
            capacity[u][v] = 1;
        }
    }

    OK ( LAGraph_Free ((void**)(&rows), msg)) ;
    OK ( LAGraph_Free ((void**)(&cols), msg)) ;
    OK ( LAGraph_Free ((void**)(&vals), msg)) ;

    ofstream graph_out("data.mtx");

    if(naive){
        auto start = chrono::high_resolution_clock::now();
        // unordered_set<int> touched;
        
        bool touched[n + m + 2];
        memset(touched, 0, sizeof(touched));

        uint64_t tot_weight = 0;
        int chosen = 0;

        // if weighted, will sort by both edge weight and degree, if unweighted by degree
        if(prefer_light){
            sort(edges.begin(), edges.end(), cmp_with_degree_light);
        } else {
            sort(edges.begin(), edges.end(), cmp_with_degree_heavy);
        }
        for(auto e : edges){
            int u = e[0]; int v = e[1];
            /*
            if(touched.count(u) || touched.count(v)){
                continue;
            }
            touched.insert(u); touched.insert(v);
            */
            
            if (touched[u] || touched[v]){
                continue;
            }
            touched[u] = touched[v] = 1;
            
            chosen++;
            tot_weight += (weighted ? e[2] : 1);
        }
        if(perf){
            auto end = chrono::high_resolution_clock::now();
            chrono::duration<double> diff = end - start;
            printf("%.10f\n", diff.count());
        } else {
            cout << tot_weight << endl;
        }
    } else {
        for(int i = 1; i <= n; i++){
            // source
            adj[0].pb(i);
            adj[i].pb(0);
            capacity[0][i] = 1;
        }
        for(int i = n + 1; i <= n + m; i++){
            // sink
            adj[i].pb(n + m + 1);
            adj[n + m + 1].pb(i);
            capacity[i][n + m + 1] = 1;
        }
        cout << maxflow(0, n + m + 1, n + m + 2) << endl;
    }
    if(weighted){
        graph_out << WEIGHTED_HEADER << endl;
    } else {
        graph_out << HEADER << endl;
    }

    graph_out << (n + m) << " " << (n + m) << " " << edges.size() << endl;
    for(auto elem : edges){
        int u = elem[0];
        int v = elem[1];
        ll w = elem[2];
        if(weighted){
            graph_out << u << " " << v << " " << w << endl;
        } else {
            graph_out << u << " " << v << endl;
        }
    }
}
