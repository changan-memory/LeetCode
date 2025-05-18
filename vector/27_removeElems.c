#include <stdio.h>

// 时间复杂O(N)   空间复杂度为O(1)
int removeElement(int* nums, int numsSize, int val) {
    int src = 0, dst = 0;
    while (src < numsSize) {
        if (nums[src] != val)
            nums[dst++] = nums[src++];
        else
            ++src;
    }
    return dst;  // 数组中元素的下标  可以表示该元素之前的元素个数
}

int main() {
    int arr[] = {1, 2, 2, 0, 4, 5, 2, 3, 2};
    removeElement(arr, sizeof(arr) / sizeof(arr[0]), 2);
    for (int i = 0; i < sizeof(arr) / sizeof(arr[0]); i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}