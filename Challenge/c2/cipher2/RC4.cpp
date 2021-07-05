//
// Created by Lenovo on 2021/7/4.
//

#include "RC4.h"

void swap_bytes(unsigned char *a, unsigned char *b){
    unsigned char temp;
    temp = *a;
    *a = *b;
    *b = temp;
}

void rc4_generate(struct rc4_state *const state, const unsigned char *key, int keylen){
    unsigned char j;
    int i;
    /* Initialize state with identity permutation */
    for (i = 0; i < 256; i++)
        state->perm[i] = (unsigned char)i;
    state->index1 = 0;
    state->index2 = 0;
    /* Randomize the permutation using key data */
    for (j = i = 0; i < 256; i++) {
        j = (j + state->perm[i] + key[i % keylen]) % 256;
        swap_bytes(&state->perm[i], &state->perm[j]);
    }
}

void rc4_crypt(struct rc4_state *const state, const unsigned char *inbuf, unsigned char *outbuf, int buflen){
    int i;
    unsigned char j;
    for (i = 0; i < buflen; i++) {
        /* Update modification indices */
        state->index1 = (state->index1 + 1) % 256;
        state->index2 = (state->index2 + state->perm[state->index1]) % 256;
        /* Modify permutation */
        swap_bytes(&state->perm[state->index1], &state->perm[state->index2]);
        /* Encrypt/decrypt next byte */
        j = (state->perm[state->index1] + state->perm[state->index2]) % 256;
        outbuf[i] = inbuf[i] ^ state->perm[j] ;
    }
}