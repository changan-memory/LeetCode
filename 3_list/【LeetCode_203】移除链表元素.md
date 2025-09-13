@[TOC](刷爆LeetCode系列)

# LeetCode第题：


# github地址

[有梦想的电信狗](https://github.com/changan-memory)

# 前言

---

# 题目描述

---

# 题目与思路分析



# 代码实现

```cpp
class Solution {
public:
    ListNode* removeElements(ListNode* head, int val) {
        ListNode* curNode = head;
        ListNode* curPrev = nullptr;
        while(curNode){
            if(curNode->val != val){
                curPrev = curNode;
                curNode = curNode->next;
            }
            else{
                // 相等时有两种情况 
                // 1. 头删  需要删结点  并 改 head
                if(head == curNode){
                    curNode = curNode->next;
                    delete head;
                    head = curNode;
                }
                // 2. 非头删，只需删结点   
                else{
                    curPrev->next = curNode->next;
                    delete curNode;
                    curNode = curPrev->next;
                }
            }
        }
       return head;
    }
};
```



借鉴删除数组中指定元素的思路：

```cpp
// 另一种思路 把不是val的值尾插到新链表
class Solution {
public:
    ListNode* removeElements(ListNode* head, int val) {
        ListNode* curNode = head;
        ListNode* tailNode = nullptr;
        ListNode* newHead = nullptr;
        while(curNode){
            if(curNode->val != val){
                // != 时尾插，尾插需要判断是不是插入的第一个节点
                if(tailNode == NULL){
                    newHead = tailNode = curNode;
                }
                else{
                    tailNode->next = curNode;
                    tailNode = tailNode->next;
                }
                curNode = curNode->next;
            }
            else{
                ListNode* delNode = curNode;
                curNode = curNode->next;
                delete delNode;
            }
        }
        if(tailNode)
            tailNode->next = nullptr;
        return newHead;
    }
};
```



---



# 算法代码优化

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

