
@[TOC](刷爆LeetCode系列)

# LeetCode27题：


# github地址

[有梦想的电信狗](https://github.com/changan-memory)

# 前言

本文用**C++实现LeetCode 第27题**

---

# 题目描述

题目链接：[https://leetcode.cn/problems/remove-element/](https://leetcode.cn/problems/remove-element/)

![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/81526a79763c467aaa05affc5fd5c4f9.png)


---

![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/89481535e90c42988d4736daec83d502.png)

# 题目思路分析

**目标分析**：

1. 将数组中等于`val`的元素移除
2. 原地移除，意味着时间复杂度为`O(n)`，空间复杂度为`O(1)`
3. 返回`nums`中与`val`值不同的元素个数

**思路：**==双指针==

+ `src`：用于**扫描元素，从待扫描元素的第一个开始，因此初始下标为0**

+ `dst`：指向数组中，**最后一个位置正确的元素的下标，因此初始值为-1**

+ `count`：记录赋值的次数，赋值的次数即为数组中与`val`值不同的元素个数，初始值为0

**操作**：

+ `nums[src] != val `时，说明：`src`位置的数无需被去掉，将其**放在`dst`的下一个位置**。
    + dst先++，指向**可以放入下一个无需被删除的元素的位置**
    + 向`nums[dst]`赋值放入元素，之后`src++`
    + 计数器`count++`
+ `nums[src] == val `时，说明`src`位置的数需要被去掉，`src++`略过该元素。

![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/045d9ad53540448f9f8e36919a8dbd4c.png)

# 代码实现

+ **时间复杂度**：`O(n)`
+ **空间复杂度**：`O(1)`

```cpp
class Solution {
public:
    int removeElement(vector<int>& nums, int val) {
         int src = 0, dst = -1;
         int count = 0;
         while(src < nums.size()){
             if(nums[src] != val){
                 ++dst;
                 nums[dst] = nums[src];
                 src++;
                 ++count;
             }
             else{
                 ++src;
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

**通过观察我们发现**：

+ `dst`和`count`自增的次数一样，且初值分别为0和-1，因此`count == dst + 1`
+ 且`while`循环内，**if和else逻辑中，都执行了src++**，因此`if`和`else`中的`src++`可以省略，直接将`src`在循环中`++`

```cpp
 // 优化版
int removeElement(vector<int>& nums, int val) {
    int src = 0, dst = -1;
    while(src < nums.size()){
        if(nums[src] != val){
            ++dst;
            nums[dst] = nums[src];
        }
        ++src;
    }
    return dst + 1;
}
```

+ 利用**前置和后置++的特性**最终优化，但不推荐这么写，因为**算法的可读性下降了**

```cpp
class Solution {
public:
   int removeElement(vector<int>& nums, int val) {
        int src = 0, dst = -1;
        while(src < nums.size()){
            if(nums[src] != val)
                nums[++dst] = nums[src++];
            else
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

