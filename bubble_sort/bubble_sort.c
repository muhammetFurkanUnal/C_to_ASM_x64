int swap(int* xp, int* yp){
  int temp = *xp;
  *xp = *yp;
  *yp = temp;
}

int bubbleSort(int arr[], int n){
  int i, j;
  int swapped;
  for (i = 0; i < n - 1; i++) {
      swapped = 0;
      for (j = 0; j < n - i - 1; j++) {
          if (arr[j] > arr[j + 1]) {
              swap(&arr[j], &arr[j + 1]);
              swapped = 1;
          }
      }

      if (swapped == 0)
          break;
  }
}

int main() {

  int arr[5] = {4, 9, 1, 15, 0};

  bubbleSort(arr, 5);

}
