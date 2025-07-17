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

class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        // if(nums.size() == 1)
        //     return 1;
        int dst = 0, src = 1;
        while(src < nums.size()){
            // src初始位于 dst右一
            // 相等时，src右移动，看后面是否还有重复的元素
            if(nums[dst] == nums[src])
                src++;
            // 不相等时，代表第一个数无重复元素了
            else{
                dst++;  //dst的下一个位置才是第二个不重复元素的位置
                nums[dst] = nums[src];
                src++;
            }
        }
        // 最后dst会指向最后一个元素的位置
        return dst + 1;
    }
};


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
