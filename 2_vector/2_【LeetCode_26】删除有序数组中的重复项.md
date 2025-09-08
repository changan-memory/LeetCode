@[TOC](刷爆LeetCode系列)

# LeetCode26题：


# github地址

[有梦想的电信狗](https://github.com/changan-memory)

# 前言

+ 本文介绍用**C++实现leetCode第26题**
+ 题目链接：[https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/)

---

# 题目描述

![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/ab2526701e8b4b2cbbb99cf691fedc9c.png#pic_center)


![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/380f11a8476e49b7a75113e607601692.png#pic_center)


---

# 题目与思路分析

**目标分析**：

1. 将数组中**重复的元素移除，仅保留一份**
2. 原地移除，意味着时间复杂度为`O(n)`，空间复杂度为`O(1)`
3. 返回`nums`中与**唯一元素的个数**

**思路：**==双指针==

+ `src`：**指向待扫描元素，从第二个元素开始扫描**
    + 因为**第一个元素一定不是重复的**，因此初始下标为1
+ `dst`：`dst`下标及其之前，都是不重复的元素
    + `dst`指向**不重复元素中的最后一个**，初始下标为0
+ `count`：记录赋值的次数，**赋值的次数即为除去第一个元素后，其余元素中的元素的种类**，**初始值为1**

**操作**：

+ **给定的数组是有序的，保证了我们不会遇到先前处理过的元素**

+ `nums[src] != nums[dst] `时，说明：`src`位置的数**第一次出现**，将其**放在`dst`的下一个位置**。
    + **dst先++**，指向**下一个不重复元素的位置**
    + `nums[dst] = nums[src]`：向`nums[dst]`赋值放入元素，之后`src++`
    + 计数器`count++`
+ `nums[src] == nums[dst] `时，说明`src`位置的数**之前出现过了，为重复元素**，`src++`略过该元素。

![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/a7bbbf2a026f4cbeb7033f59b6931e53.png#pic_center)


# 代码实现

+ **时间复杂度**：`O(n)`
+ **空间复杂度**：`O(1)`

```cpp
class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        int src = 1, dst = 0;
        int count = 1;
        while(src < nums.size()){
            if(nums[src] == nums[dst]){
                ++src;
            }
            else{
                ++dst;
                nums[dst] = nums[src];
                ++src;
                ++count;
            }
        }
        return count;
    }
};
```

---

# 算法代码优化

+ **时间复杂度**：`O(n)`
+ **空间复杂度**：`O(1)`

```cpp
class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        int src = 1, dst = 0;
        int count = 1;
        while(src < nums.size()){
            if(nums[src] == nums[dst]){
                ++src;
            }
            else{
                ++dst;
                nums[dst] = nums[src];
                ++src;
                ++count;
            }
        }
        return count;
    }
};
```

**通过观察我们发现**：

+ 循环内`dst`和`count`自增的次数一样，且初值分别为0和1，因此`count == dst + 1`
    + `dst`指向的是数组中**不重复的最后一个元素**，`dst + 1`即为**不重复的元素的个**数

+ 且`while`循环内，**if和else逻辑中，都执行了src++**，因此`if`和`else`中的`src++`可以省略，直接将`src`在循环中`++`

```cpp
class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        int src = 1, dst = 0;
        while(src < nums.size()){
            if(nums[src] != nums[dst]){
                ++dst;
                nums[dst] = nums[src];
            }
            ++src;
        }
        return dst + 1;
    }
};
```

+ 利用**前置和后置++的特性**最终优化，虽然代码更加简洁了，但不推荐这么写，因为**算法的可读性下降了**

```cpp
class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        int src = 1, dst = 0;
        while(src < nums.size()){
            if(nums[src] != nums[dst]){
                nums[++dst] = nums[src];
            }
            ++src;
        }
        return dst + 1;
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
