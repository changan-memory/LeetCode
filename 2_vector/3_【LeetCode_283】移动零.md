@[TOC](刷爆LeetCode系列)

# LeetCode第283题：


# github地址

[有梦想的电信狗](https://github.com/changan-memory)

# 前言

本文用**C++实现 LeetCode 第283题**

---

# 题目描述

题目链接：[https://leetcode.cn/problems/move-zeroes/description/](https://leetcode.cn/problems/move-zeroes/description/)

![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/81b6093352f64d68ba7cd82305a27ac8.png#pic_center)


![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/de0a4d7a2e2743d985636a7ce6b9ccd9.png#pic_center)




---

# 题目与思路分析

**目标分析**：

1. 将数组中**所有的0移动到数组的末尾**，同时**保持非零元素的相对位置**
2. **不复制数组，即原地移除**，意味着时间复杂度为`O(n)`，空间复杂度为`O(1)`
3. 直接对原数组进行操作

**思路：**==双指针==

+ `cur`：用于**扫描元素，从待扫描元素的第一个开始，因此初始下标为0**
+ `dest`：指向数组中，**已处理的区间中，最后一个非零元素的下标**，初始时还未处理，**初始下标为-**1

**操作**：

+ `cur < nums.size()`时，进入循环判断

+ `nums[cur] == 0` 时：当前位置为0，`cur++`，略过该位置的元素0，`dest`不变
+ `nums[cur] != 0` 时： 由于`dest`为**已处理的区间中，最后一个非零元素的下标**，因此`dest++`后指向下一个位置，再将非零元素`nums[cur]`与`nums[dest]` 交换，再`cur++`
    + 即遇到非零元素：
        + `++dest`
        + `std::swap(nums[cur], nums[dest]);`
        + `++cur`

![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/2e34f40fcfea40f6abf7fa903515f29e.png#pic_center)


# 代码实现

+ **时间复杂度**：`O(n)`
+ **空间复杂度**：`O(1)`

```cpp
class Solution {
public:
    void moveZeroes(vector<int>& nums) {
        int cur = 0, dest = -1;
        while(cur < nums.size()){
            if(nums[cur] == 0){
                ++cur;
            }
            else{
                ++dest;
                std::swap(nums[cur], nums[dest]);
                ++cur;
            }
        }
    }
};
```

# 算法代码优化

+ 利用**前置和后置++的特性**最终优化，但不推荐这么写，因为**算法的可读性下降了**

```cpp
class Solution {
public:
    void moveZeroes(vector<int>& nums) {
        int cur = 0, dest = -1;
        while(cur < nums.size()){
            if(nums[cur] == 0)
                ++cur;
            else
                std::swap(nums[cur++], nums[++dest]);
        }
    }
};
```

---


**以上就是本文的所有内容了，如果觉得文章对你有帮助，欢迎 点赞⭐收藏 支持！如有疑问或建议，请在评论区留言交流，我们一起进步**

>`分享到此结束啦`
>`一键三连，好运连连！`
>
>>**你的每一次互动，都是对作者最大的鼓励！**  
>
>---
>
>>`征程尚未结束，让我们在广阔的世界里继续前行！` 🚀


