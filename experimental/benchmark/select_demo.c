#include "../../src/benchmark/LAGraph_demo.h"
#include "LG_internal.h"
#include "LAGraphX.h"

#define DEFAULT_SIZE 500
#define DEFAULT_DENSITY 0.7
#define DEFAULT_SEED 42

#define POSITIONAL 1
#define IJ 0
#define BITMAP 0

#define LG_FREE_ALL            \
{                              \
    GrB_Matrix_free (&A) ;     \
    GrB_Matrix_free (&Res) ;   \
}

int main(int argc, char **argv)
{
    char msg [LAGRAPH_MSG_LEN] ;

    LAGraph_Graph G = NULL ;
    GrB_Matrix A = NULL ;
    GrB_Matrix Res = NULL ;

    bool burble = false ; 
    demo_init (burble) ;
    
    GrB_Index n = (argc > 2 ? atoi (argv [2]) : DEFAULT_SIZE) ;
    double density = (argc > 3 ? atof (argv [3]) : DEFAULT_DENSITY) ;
    uint64_t seed = (argc > 4 ? atoll (argv [4]) : DEFAULT_SEED) ;

    LG_TRY (LAGraph_Random_Init (msg)) ;
    int ntrials = 10 ;

    for (int i = 0 ; i < ntrials ; i++) {

        LG_TRY (LAGraph_Random_Matrix (&A, GrB_UINT64, n, n, density, seed, msg)) ;
        GRB_TRY (GxB_set (A, GxB_SPARSITY_CONTROL,
            BITMAP ? GxB_BITMAP : GxB_SPARSE)) ;

        GrB_Scalar s ;
        GRB_TRY (GrB_Scalar_new (&s, GrB_UINT64)) ;

        GRB_TRY (GrB_Matrix_new (&Res, GrB_UINT64, n, n)) ;

        GrB_Index D_nvals, A_nvals ;
        GRB_TRY (GrB_Matrix_nvals (&A_nvals, A)) ;
        printf ("nvals: A: %ld\n", A_nvals) ;

        GRB_TRY (GrB_Scalar_setElement_UINT64 (s, (uint64_t) 0)) ;
        GRB_TRY (GrB_Matrix_select_Scalar (Res, NULL, NULL, (POSITIONAL ? 
            (IJ ? GrB_DIAG : GrB_ROWLE) : GrB_VALUEEQ_UINT64), A, s, NULL)) ;
        
        GrB_Matrix_free (&A) ;
        GrB_Matrix_free (&Res) ;
    }
    LG_TRY (LAGraph_Finalize (msg)) ;
    return (GrB_SUCCESS) ;
}