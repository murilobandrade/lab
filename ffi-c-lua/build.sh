gcc -fPIC -c -o test_ppointer.o test_ppointer.c && gcc -shared -Wl -o libtest_ppointer.o test_ppointer.o
