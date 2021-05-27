#include <iostream>
#include <gmpxx.h>
using namespace std;

long gcd(long a, long b) {
    long r0, r1, s0, s1, t0, t1, q, tmp;
    r0 = b; r1 = a;
    s0 = 0; s1 = 1;
    t0 = 1; t1 = 0;
    while (r0 != 0) {
        q = r1 / r0;
        tmp = r1 - q * r0;
        r1 = r0;
        r0 = tmp;
        tmp = s1 - q * s0;
        s1 = s0;
        s0 = tmp;
        tmp = t1 - q * t0;
        t1 = t0;
        t0 = tmp;
    }
    return r1;
}

int main(){
    gmp_randclass randclass(gmp_randinit_default);
    randclass.seed(time(0));
    mpz_class a = randclass.get_z_bits(4096);
    mpz_class b = randclass.get_z_bits(4096);
    mpz_class gmpresult = gcd(a, b);
    mpz_class myresult = gcd(a, b);
    cout << "a = " << a << ", b = " << b << endl;
    cout << "gcd(a,b) result using gmp function is " << gmpresult << endl;
    cout << "gcd(a,b) result using my own function is " << myresult << endl;
    if (gmpresult == myresult) cout << "Two results are the same!" << endl;
    else cout << "Two results are different!" << endl;
    return 0;
}