#include <iostream>
#include <algorithm>
#include <gmp.h>
#include <gmpxx.h>

using namespace std;
mpz_class Algorithm(mpz_class a,mpz_class b){
    if(a%b==0){
        return b;
    }else{
        return gcd(b,a%b);
    }
}

int main() {
    gmp_randclass randclass(gmp_randinit_default);
    randclass.seed(time(0));
    mpz_class a = randclass.get_z_bits(4096);
    mpz_class b = randclass.get_z_bits(4096);
    cout<<"the first number is: "<<a<<endl;
    cout<<"the second number is: "<<b<<endl;
    if(Algorithm(a,b)==gcd(a,b)){
        cout<<"you are right! "<<endl;
    }else{
        cout<<"you are wrong!"<<endl;
    }
    return 0;
}
