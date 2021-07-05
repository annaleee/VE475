//
// Created by Lenovo on 2021/7/4.
//

#ifndef CIPHER2_RC4_H
#define CIPHER2_RC4_H

struct rc4_state {
    unsigned char  perm[256];
    unsigned char  index1;
    unsigned char  index2;
};
extern void rc4_generate(struct rc4_state *const state, const unsigned char *key, int keylen);
extern void rc4_crypt(struct rc4_state *const state, const unsigned char *inbuf, unsigned char *outbuf, int buflen);


#endif //CIPHER2_RC4_H
