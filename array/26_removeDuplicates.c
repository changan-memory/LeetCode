#include <stdio.h>
// 去重算法
void arrPrint(int* arr, int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int removeDuplicates_me(int* nums, int numsSize) {
    // // 没有考虑数组只有一个值的情况
    // int src = 1, dst = 1;
    // int val = nums[0]; // 直接把
    // while (src < numsSize) {
    //     if (nums[src] == val) {
    //         src++;
    //     } else {
    //         val = nums[src];
    //         nums[dst] = nums[src];
    //         dst++;
    //         src++;
    //     }
    // }
    // return dst;
    int src = 1, dst = 0;
    while (src < numsSize) {
        if (nums[dst] == nums[src]) {
            src++;
        } else {
            dst++;
            nums[dst] = nums[src];
            src++;
        }
    }
    return dst + 1;
}

int removeDuplicates(int* nums, int numsSize) {
    int src = 1, dst = 0;
    while (src < numsSize) {
        if (nums[dst] == nums[src]) {
            src++;
        } else {
            dst++;
            nums[dst] = nums[src];
            src++;
        }
    }
    return dst + 1;
}

int main() {
    int arr[] = {0, 0, 1, 1, 1, 2, 2, 3, 3, 4};
    int size = sizeof(arr) / sizeof(arr[0]);
    arrPrint(arr, size);
    // int num = removeDuplicates_me(arr, size);
    int num = removeDuplicates(arr, size);
    arrPrint(arr, num);
    printf("  %d  ", num);
    return 0;
}
