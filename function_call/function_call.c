
int func(int* a) {
  int b = 10;
  *a = *a + b;
}

int main() {

  int a = 10;
  func(&a);

}

