// This code contains a few bugs

// Your task is to debug the code using GDB

// Ensure that you also get correct output for all print statements eg: Product of array elements

#include <stdio.h>


int binarySearch(int arr[], int low, int high, int target) {
    int *mid_element = NULL;
    
    if (low <= high) {
        int mid = (low + high) / 2;
        *mid_element = arr[mid];
        if (*mid_element == target) {
            return mid;
        } else if (*mid_element < target) {
            return binarySearch(arr, mid + 1, high, target);
        } else {
            return binarySearch(arr, low, mid - 1, target);
        }
    }
    return -1;
}

int main() {
    int array[5] = {10, 20, 30, 40, 50};
    
    for (int i = 0; i < 5; ++i) {
        array[i] = i;
    }

    int sum = 0;
    for (int i = 0; i <= 5; ++i) {
        sum += array[i];
    }
    printf("Sum of array elements: %d\n", sum);

  
    int product = 1;
    for (int i = 0; i <= 5; ++i) {
        product *= array[i];
    }
    printf("Product of array elements: %d\n", product);


    char *str = "Hello World!";
    str[2] = 'L'; 

    int divisor = 0;
    int result = sum / divisor; 

    int target = 30;
    int index = binarySearch(array, 0, 4, target);
    printf("Binary search result for %d: %d\n", target, index);


    return 0;
}

