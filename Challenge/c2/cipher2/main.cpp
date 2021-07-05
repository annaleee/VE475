#include <cstdio>
#include "RC4.h"
#include <cstring>
#include <iostream>
#include <fstream>
using namespace std;

#define LEN 50

int main(int argc, char* argv[]) {
    unsigned char plaintext[LEN] = { 0 };
    unsigned char result[LEN] = { 0 };
    unsigned char key[LEN] = "1234567890";
    struct rc4_state state;
    if(strcmp(argv[1],"--generate")==0){
        cout<<key;
    }else if(strcmp(argv[1],"--encrypt")==0){
        for(int i=0;i<strlen(argv[2]);i++){
            plaintext[i]=argv[2][i];
        }
        if(argc>3&&strcmp(argv[3],"--key")==0){
            fstream file;
            file.open(argv[4]);
            int n=0;
            while(!file){
                file>>key[n];
                n++;
            }
            file.close();
        }
        rc4_generate(&state, key, strlen((const char*)key));
        rc4_crypt(&state, plaintext, result,strlen((const char*)plaintext));
        cout<<"result is:"<<result;
        rc4_generate(&state, key, strlen((const char*)key));
        rc4_crypt(&state, result, plaintext,strlen((const char*)result));
        cout<<"plain is:"<<plaintext;
    }else if(strcmp(argv[1],"--decrypt")==0){
        for(int i=0;i<strlen(argv[2]);i++){
            plaintext[i]=argv[2][i];
        }
        if(argc>3&&strcmp(argv[3],"--key")==0){
            fstream file;
            file.open(argv[4]);
            int n=0;
            while(!file){
                file>>key[n];
                n++;
            }
            file.close();
        }
        rc4_generate(&state, key, strlen((const char*)key));
        rc4_crypt(&state, plaintext, result,strlen((const char*)plaintext));
        for(int i=0;i< strlen((const char*)result-1);i++){
            cout<<(int)result[i]<<"-";
        }
        cout<<(int)result[strlen((const char*)result-1)];
    }else{
        cout<<"ALOHA:"<<argv[1];
    }
    return 0;
}