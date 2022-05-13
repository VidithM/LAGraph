//----------------------------------------------------------------------------
// LAGraph/expirimental/test/test_KCoreDecompose.c: test cases for k-core
// decomposition
// ----------------------------------------------------------------------------

// LAGraph, (c) 2021 by The LAGraph Contributors, All Rights Reserved.
// SPDX-License-Identifier: BSD-2-Clause
//-----------------------------------------------------------------------------

#include <stdio.h>
#include <acutest.h>

#include <LAGraphX.h>
#include <LAGraph_test.h>

char msg [LAGRAPH_MSG_LEN] ;
LAGraph_Graph G = NULL ;
GrB_Matrix A = NULL, D1 = NULL, D2 = NULL;
GrB_Vector c = NULL;
#define LEN 512
char filename [LEN+1] ;

typedef struct
{
    uint64_t kval ;
    const char *name ;
}
matrix_info ;

const matrix_info files [ ] =
{
    {     4, "karate.mtx" },
    // {   10, "amazon0601.mtx" },
    // {   64, "cit-Patents.mtx"},
    // {   2208, "hollywood-2009.mtx"},
    // {   111, "as-Skitter.mtx"},
    { 0, "" },
} ;


void test_KCoreDecompose (void)
{
    LAGraph_Init (msg) ;

    for (int k = 0 ; ; k++)
    {
        // load the matrix as A
        const char *aname = files [k].name ;
        uint64_t kval = files [k].kval ;
        if (strlen (aname) == 0) break;
        TEST_CASE (aname) ;
        snprintf (filename, LEN, LG_DATA_DIR "%s", aname) ;
        FILE *f = fopen (filename, "r") ;
        TEST_CHECK (f != NULL) ;
        OK (LAGraph_MMRead (&A, f, msg)) ;
        TEST_MSG ("Loading of adjacency matrix failed") ;

        // construct an undirected graph G with adjacency matrix A
        OK (LAGraph_New (&G, &A, LAGraph_ADJACENCY_DIRECTED, msg)) ;
        TEST_CHECK (A == NULL) ;

        // check if the pattern is symmetric - if it isn't make it.
        OK (LAGraph_Cached_IsSymmetricStructure (G, msg)) ;

        if (G->is_symmetric_structure == LAGraph_FALSE)
        {   
            printf("This matrix is not symmetric. \n");
            // make the adjacency matrix symmetric
            OK (LAGraph_Cached_AT (G, msg)) ;
            OK (GrB_eWiseAdd (G->A, NULL, NULL, GrB_LOR, G->A, G->AT, NULL)) ;
            G->is_symmetric_structure = true ;
        }
        G->kind = LAGraph_ADJACENCY_UNDIRECTED ;

        // check for self-edges, and remove them.
        OK (LAGraph_Cached_NDiag (G, msg)) ;
        if (G->ndiag != 0)
        {
            // remove self-edges
            printf ("graph has %g self edges\n", (double) G->ndiag) ;
            OK (LAGraph_DeleteDiag (G, msg)) ;
            printf ("now has %g self edges\n", (double) G->ndiag) ;
            TEST_CHECK (G->ndiag == 0) ;
        }

        bool ok;
        //get the kcore at the designated k-value
        LAGraph_KCore(&c, G, kval, msg) ;
        
        //decompose the k-core from vector c into D1
        LAGraph_KCore_Decompose(&D1, G, c, kval, msg);

        //decompose the k-core from vector c into D2
        LG_check_kcore_decompose(&D2, G, c, kval, msg);

        //check equality
        OK (LAGraph_Matrix_IsEqual (&ok, D1, D2, msg)) ;
        TEST_CHECK(ok);
        
        OK (LAGraph_Delete (&G, msg)) ;
    }

    LAGraph_Finalize (msg) ;
}

//------------------------------------------------------------------------------
// test_errors
//------------------------------------------------------------------------------

void test_errors (void)
{
    LAGraph_Init (msg) ;

    snprintf (filename, LEN, LG_DATA_DIR "%s", "karate.mtx") ;
    FILE *f = fopen (filename, "r") ;
    TEST_CHECK (f != NULL) ;
    OK (LAGraph_MMRead (&A, f, msg)) ;
    TEST_MSG ("Loading of adjacency matrix failed") ;

    // construct an undirected graph G with adjacency matrix A
    OK (LAGraph_New (&G, &A, LAGraph_ADJACENCY_UNDIRECTED, msg)) ;
    TEST_CHECK (A == NULL) ;

    OK (LAGraph_Cached_NDiag (G, msg)) ;

    uint64_t kval ;
    GrB_Vector c = NULL ;

    // c is NULL
    int result = LAGraph_KCore_Decompose (&D1, G, NULL, &kval, msg) ;
    printf ("\nresult: %d %s\n", result, msg) ;
    TEST_CHECK (result == GrB_NULL_POINTER) ;

    // G is invalid
    result = LAGraph_KCore_Decompose (&D1, NULL, &c, &kval, msg) ;
    printf ("\nresult: %d %s\n", result, msg) ;
    TEST_CHECK (result == GrB_NULL_POINTER) ;
    TEST_CHECK (c == NULL) ;

    // G may have self edges
    G->ndiag = LAGRAPH_UNKNOWN ;
    result = LAGraph_KCore_Decompose(&D1, G, c, kval, msg);
    printf ("\nresult: %d %s\n", result, msg) ;
    TEST_CHECK (result == -1004) ;
    TEST_CHECK (c == NULL) ;

    // G is undirected
    G->ndiag = 0 ;
    G->kind = LAGraph_ADJACENCY_DIRECTED ;
    G->is_symmetric_structure = LAGraph_FALSE ;
    result = LAGraph_KCore_Decompose(&D1, G, c, kval, msg);
    printf ("\nresult: %d %s\n", result, msg) ;
    TEST_CHECK (result == -1005) ;
    TEST_CHECK (c == NULL) ;

    OK (LAGraph_Delete (&G, msg)) ;
    LAGraph_Finalize (msg) ;
}

TEST_LIST = {
    {"KCoreDecompose", test_KCoreDecompose},
    {"KCoreDecompose_errors", test_errors},
    {NULL, NULL}
};
