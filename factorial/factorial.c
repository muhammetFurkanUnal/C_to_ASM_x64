int factorial (int n) {

  if (n = 0)
    return 1;

  return n*factorial(n-1);

}

int main() {

  int a = 4;
  int fac = factorial(a);

}