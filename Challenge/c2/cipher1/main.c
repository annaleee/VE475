#include "AES.h"

int main() {

    uint8_t text[16] = {0x01, 0x23, 0x45, 0x67,0x89, 0xab, 0xcd, 0xef,0xfe, 0xdc, 0xba, 0x98,0x76, 0x54, 0x32, 0x10};
    uint8_t key[16] = {0x12, 0x69, 0x34, 0x88,0x0f, 0xfb, 0xcd, 0x0e,0x44, 0x90, 0xfa, 0xcd,0xbf, 0x77, 0x32, 0x19};

    printf("The plaintext is: ");
    AES_Print(text);
    printf("The initial key is: ");
    AES_Print(key);

    uint8_t *bytes = encrypt(text, key);
    printf("The ciphertext is: ");
    AES_Print(bytes);

    uint8_t *message_de = decrypt(bytes, key);
    printf("The decrypted text is: ");
    AES_Print(message_de);

    free(bytes);
    free(message_de);
    return 0;
}