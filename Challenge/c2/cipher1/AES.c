//
// Created by Lenovo on 2021/7/4.
//

#include "AES.h"
uint8_t *transform(const uint8_t text[16]){
    uint8_t *tmp = malloc(sizeof(uint8_t)*16);
    for (int i = 0; i < 4; i++){
        for (int j = 0; j < 4; j++){
            tmp[j+i * 4] = text[i + j * 4];
        }
    }
    return tmp;
}
void AES_Print(uint8_t text[16]){
    for (int i = 0; i < 16; i++){
        printf("%02x\t", text[i]);
    }
    printf("\n");
}
void SubBytes(uint8_t text[16]){
    for(int i=0;i<16;i++){
        text[i] = SBOX[text[i]];
    }
}
void SubBytes_inv(uint8_t text[16]){
    for(int i=0;i<16;i++){
        text[i] = SBOX_inv[text[i]];
    }
}
void ShiftRows(uint8_t text[16]){
    uint8_t temp1 = text[4];
    text[4] = text[5];
    text[5] = text[6];
    text[6] = text[7];
    text[7] = temp1;

    temp1 = text[8];
    uint8_t temp2 = text[9];
    text[8] = text[10];
    text[9] = text[11];
    text[10] = temp1;
    text[11] = temp2;

    temp1 = text[12];
    temp2 = text[13];
    uint8_t temp3 = text[14];
    text[12] = text[15];
    text[13] = temp1;
    text[14] = temp2;
    text[15] = temp3;

}

void ShiftRows_inv(uint8_t text[0x10]){
    uint8_t temp1 = text[12];
    text[12] = text[13];
    text[13] = text[14];
    text[14] = text[15];
    text[15] = temp1;

    temp1 = text[11];
    uint8_t temp2 = text[10];
    text[11] = text[9];
    text[10] = text[8];
    text[9] = temp1;
    text[8] = temp2;

    temp1 = text[15];
    temp2 = text[14];
    uint8_t temp3 = text[13];
    text[15] = text[12];
    text[14] = temp1;
    text[13] = temp2;
    text[12] = temp3;
}

uint8_t **generate_key(uint8_t key[16]){
    uint8_t **roundkey=malloc(sizeof(uint8_t *)*11);
    roundkey[0] = transform(key);
    for (int i = 1; i < 11; i++){
        roundkey[i] = malloc(sizeof(uint8_t)*16);//16 vectors
    }
    for (int i = 1; i < 11; i++){
        roundkey[i][0] = roundkey[i - 1][0] ^ SBOX[roundkey[i - 1][7]] ^ RCON[i];
        roundkey[i][4] = roundkey[i - 1][4] ^ SBOX[roundkey[i - 1][11]];
        roundkey[i][8] = roundkey[i - 1][8] ^ SBOX[roundkey[i - 1][15]];
        roundkey[i][12] = roundkey[i - 1][12] ^ SBOX[roundkey[i - 1][3]];
        for (int j = 0; j < 16; j++){
            if (j % 4 != 0) roundkey[i][j]=roundkey[i - 1][j] ^ roundkey[i][j - 1];
        }
    }
    return roundkey;
}
void AddRoundKey(uint8_t input[16], const uint8_t key[16]){
    for(int i=0;i<=15;i++){
        input[i] = input[i] ^ key[i];
    }
}
uint8_t GaloisMultiplication(uint8_t Num_L, uint8_t Num_R){
    uint8_t Result = 0;
    while (Num_L){
        if (Num_L & 0x01){//If the least significance digit of Num_L is 1, XOR Num_R(add Num_R * 1)
            Result ^= Num_R;
        }
        Num_L = Num_L >> 1;//Num_L right shift 1

        if (Num_R & 0x80){//If the most significance digit of Num_R is 1
            Num_R = Num_R << 1;//Num_R left shift 1
            Num_R ^= 0x1B; //Calculate the division: Num_R = Num_R / (x^8(abandon the highest position) + x^4 + x^3 + x^1 + 1)
        }
        else Num_R = Num_R << 1;
    }
    return Result;
}
void MixColumn(uint8_t text[16]){
    uint8_t PlainArray[4][4];
    for(int i=0;i<4;i++){
        for (int j = 0; j < 4; ++j) {
            PlainArray[i][j] = text[i*4+j];
        }
    }
    for (int i = 0; i < 4; i++){
        for (int j = 0; j < 4; j++){
            text[4*i+j] =
                    GaloisMultiplication(MixArray[i][0], PlainArray[0][j])^
                    GaloisMultiplication(MixArray[i][1], PlainArray[1][j])^
                    GaloisMultiplication(MixArray[i][2], PlainArray[2][j])^
                    GaloisMultiplication(MixArray[i][3], PlainArray[3][j]);
        }
    }
}

void MixColumn_inv(uint8_t text[16]){
    uint8_t CipherArray[4][4];
    for(int i=0;i<4;i++){
        for (int j = 0; j < 4; ++j) {
            CipherArray[i][j] = text[i*4+j];
        }
    }
    for (int i = 0; i < 4; i++){
        for (int j = 0; j < 4; j++){
            text[4*i+j] =
                    GaloisMultiplication(MixArray_inv[i][0], CipherArray[0][j])^
                    GaloisMultiplication(MixArray_inv[i][1], CipherArray[1][j])^
                    GaloisMultiplication(MixArray_inv[i][2], CipherArray[2][j])^
                    GaloisMultiplication(MixArray_inv[i][3], CipherArray[3][j]);
        }
    }
}

uint8_t *encrypt(uint8_t plaintext[16], uint8_t key[16]){
    uint8_t *text = transform(plaintext);
    uint8_t **roundkey= generate_key(key);
    for (int i = 0; i < 9; i++){
        AddRoundKey(text, roundkey[i]);
        SubBytes(text);
        ShiftRows(text);
        MixColumn(text);
    }
    AddRoundKey(text, roundkey[9]);
    SubBytes(text);
    ShiftRows(text);
    AddRoundKey(text, roundkey[10]);
    uint8_t *ciphertext = transform(text);
    return ciphertext;
}

uint8_t *decrypt(uint8_t ciphertext[16], uint8_t key[16]){
    uint8_t *text = transform(ciphertext);
    uint8_t **roundkey= generate_key(key);
    AddRoundKey(text, roundkey[10]);
    for (int i = 0; i < 9; i++){
        ShiftRows_inv(text);
        SubBytes_inv(text);
        AddRoundKey(text, roundkey[9 - i]);
        MixColumn_inv(text);
    }
    ShiftRows_inv(text);
    SubBytes_inv(text);
    AddRoundKey(text, roundkey[0]);
    uint8_t *plaintext = transform(text);
    return plaintext;
}