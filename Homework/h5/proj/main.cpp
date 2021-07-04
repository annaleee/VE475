#include <stdio.h>
#include <time.h>
#include <iostream>
#include <gmp.h>
#include <stdlib.h>
#define RSA80 1024
#define RSA112 2048
#define RSA128 3072
#define RSA192 7680
#define RSA256 15360
using namespace std;

typedef struct rsa_key_t{
    size_t security;
    mpz_t p,q,n,e,d;
} rsa_key;

rsa_key generate_key(size_t security){
    //initialize size of p, q
    rsa_key key;
    size_t len = security;
    size_t p = len/2;
    size_t q = len/2;

    //generate p, q
    gmp_randstate_t random1;
    gmp_randinit_mt(random1);
    gmp_randseed_ui(random1, (unsigned) time(NULL));

    mpz_ui_pow_ui(key.e,2,p-1);
    mpz_ui_pow_ui(key.d,2,q-1);

    while (1){
        mpz_urandomb(key.p, random1, p - 1);
        if (mpz_even_p(key.p)) mpz_sub_ui(key.p, key.p, 1);
        if (mpz_probab_prime_p(key.p, 15)) break;
    }
    while (1){
        mpz_urandomb(key.q, random1, q - 1);
        if (mpz_even_p(key.q)) mpz_sub_ui(key.q, key.q, 1);
        if (mpz_probab_prime_p(key.q, 15)) break;
    }

    mpz_mul(key.n, key.p, key.q); //n
    mpz_t phi,gcd,p1,q1;
    mpz_inits(phi,p1,q1,gcd);

    mpz_sub_ui(p1, key.p, 1); //p-1
    mpz_sub_ui(q1, key.q, 1); //q-1
    mpz_mul(phi, p1, q1);//phi

    while (1){
        mpz_urandomb(key.e, random1, len-2);
        if (mpz_even_p(key.e)) mpz_add_ui(key.e, key.e, 1);
        mpz_gcd(gcd, key.e, phi);
        if (mpz_cmp_ui(gcd,1) == 0) break;//calculate e
    }
    mpz_invert(key.d, key.e, phi);//d
    return key;
}

void encrypt(mpz_t *m, mpz_t *c, rsa_key k){
    mpz_powm(*c, *m, k.e, k.n);
}

void decrypt(mpz_t *m, mpz_t *c, rsa_key k){
    mpz_powm(*m, *c, k.d, k.n);
}

void print_key(rsa_key key){
    printf("RSA modulus: %d\n", key->security);
    printf("p: %s\n", mpz_get_str(NULL, 16, key->p));
    printf("q: %s\n", mpz_get_str(NULL, 16, key->q));
    printf("n: %s\n", mpz_get_str(NULL, 16, key->n));
    printf("e: %s\n", mpz_get_str(NULL, 16, key->e));
    printf("d: %s\n", mpz_get_str(NULL, 16, key->d));

}

int main() {
    size_t security = RSA112;
    rsa_key key;
    key=generate_key(security);
    print_key(key);
    mpz_t m,c;
    mpz_inits(m,c);
    cout <<  "Enter any text(0-9): ";
    cin >> m;
    printf("Plaintext: %s\n", mpz_get_str(NULL, 16, m));
    encrypt(&m, &c, key);
    printf("Ciphertext: %s\n", mpz_get_str(NULL, 16, c));
    decrypt(&m, &c, key);
    printf("Decrypted text: %s\n", mpz_get_str(NULL, 16, m));

    return 0;
}