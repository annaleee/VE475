//
// Created by AnnaLee on 2021/7/5.
//

#ifndef CIPHER2_BACKUP_H
#define CIPHER2_BACKUP_H
struct rc4_state
{
    int x, y, m[256];
};

void rc4_setup( struct rc4_state *s, unsigned char *key,  int length );
void rc4_crypt( struct rc4_state *s, unsigned char *data, int length );

#endif //CIPHER2_BACKUP_H
