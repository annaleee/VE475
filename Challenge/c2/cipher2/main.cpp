#include <cstdio>
#include "RC4.h"
#include <cstring>
#include <iostream>
using namespace std;

#define LEN 50

int main(int argc, char* argv[]) {
    unsigned char plaintext[LEN] = { 0 };
    unsigned char crypt[LEN]{ 0 };
    unsigned char decrypt[LEN]{ 0 };
    unsigned char key[LEN] = "1234567890";
    struct rc4_state state;
    cin>>plaintext;
    cout<<"plaintext: "<<endl;

    for (int i = 0; i < strlen((const char*)plaintext); i++) {
        cout<<plaintext[i];
    }
    rc4_generate(&state, key, strlen((const char*)key));
    rc4_crypt(&state, plaintext, crypt, strlen((const char*)plaintext));
    cout<<"\n\ncrypt: "<<endl;
    for (int i = 0; i < strlen((const char*)plaintext); i++) {
        cout<<crypt[i];
    }
    cout<<"\n\ndecrypt: "<<endl;
    rc4_generate(&state, key, strlen((const char*)key));
    rc4_crypt(&state, crypt, decrypt, strlen((const char*)plaintext));
    for (int i = 0; i < strlen((const char*)plaintext); i++) {
        cout<<decrypt[i];
    }
    return 0;
}