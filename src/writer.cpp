#include <stdio.h>
#include <string.h>
#include <libpmemobj.h>
#include "../layout.h"

int main(int argc, char* argv[])
{
    //PMEMobjpool *pop = pmemobj_open(argv[1], LAYOUT_NAME);
    // if(pmemobj_check(argv[1], LAYOUT_NAME)!= 1) {
    //     printf("%s\n", pmemobj_errormsg());
    // }
    PMEMobjpool *pop = pmemobj_create(argv[1], POBJ_LAYOUT_NAME(string_store), PMEMOBJ_MIN_POOL, 0666);
    if(pop == NULL) {
        perror("pmemobj_create");
        return 1;
    }
    //Untyped pointer
    //PMEMoid root = pmemobj_root(pop, sizeof(struct my_root));
    //struct my_root *rootp = pmemobj_direct(root);

    TOID(struct my_root) root = POBJ_ROOT(pop, struct my_root);

    char buf[MAX_BUF_LEN];
    scanf("%9s", buf);
    TX_BEGIN(pop) {
        // Untyped pointer
        // pmemobj_tx_add_range(root, 0, sizeof (struct my_root));
        // memcpy(rootp->buf, buf, strlen(buf));  

        TX_MEMCPY(D_RW(root)->buf, buf, strlen(buf)); 
    } TX_END
    

    pmemobj_close(pop);
    return 0;

}

// cast TOID -> PMEMoid
// TOID(struct foo) data;
// pmemobj_direct(data.oid);