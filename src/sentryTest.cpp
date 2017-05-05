#include <iostream>
#include <cstdlib>
#include <string>
#include <stdexcept>

#include <cstdio>
#include <cassert>
#include <unistd.h>

using namespace std;

int main(int argc, char **argv) {

    cout << "Test print 0 at beginning of program" << endl;

    int  fdOut = 0;
    int  fdErr = 0;

    if (fdOut == 0 && fdErr == 0) {
        fdOut = dup(1);
        fdErr = dup(2);
        }
    freopen("/dev/null", "w", stdout);
    freopen("/dev/null", "w", stderr);

    cout << "Test print 1 after redirecting" << endl;

    if (fdOut != fdErr) {
        char buf[50];
        sprintf( buf, "/dev/fd/%d", fdOut ); freopen(buf, "w", stdout);
        sprintf( buf, "/dev/fd/%d", fdErr ); freopen(buf, "w", stderr);
        }

    cout << "Test print 2 after undoing the redirecting" << endl;

    }