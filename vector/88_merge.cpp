#include <stdio.h>

// 时间复杂度 O(m+n)
void merge(int* nums1, int nums1Size, int m, int* nums2, int nums2Size, int n) {
    int end1 = m - 1, end2 = n - 1;
    int dst = m + n - 1;
    while (end1 >= 0 && end2 >= 0) {
        if (nums1[end1] > nums2[end2]) {
            nums1[dst--] = nums1[end1--];
        } else {
            nums1[dst--] = nums2[end2--];
        }
    }
    while (end2 >= 0) {
        nums1[dst--] = nums2[end2--];
    }
}

int main() {
    return 0;
}