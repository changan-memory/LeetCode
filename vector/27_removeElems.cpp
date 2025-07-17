#include <stdio.h>
#include <vector>
using namespace std;

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
class Solution {
public:
    int removeElement(vector<int>& nums, int val) {
        int src = 0, dst = 0;
        int count = 0;		// 计数器
        while(src < nums.size()){
            // 无需移除的元素，放在dst位置。赋值后src和dst均移向下一个位置
            if(nums[src] != val){
                nums[dst++] = nums[src++];
                ++count;
            }
            // 需要移除的元素，src直接跳过，等待覆盖写入
            else
                src++;
        }
        return count;
        //return dst;
    }
};

int main() {
    int arr[] = {1, 2, 2, 0, 4, 5, 2, 3, 2};
    removeElement(arr, sizeof(arr) / sizeof(arr[0]), 2);
    for (int i = 0; i < sizeof(arr) / sizeof(arr[0]); i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}