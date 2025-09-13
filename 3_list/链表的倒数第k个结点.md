+ 找到链表的倒数第k个结点

```cpp
class Solution {
public:
    ListNode* NthNode(ListNode* head, int n) {
        if(head == nullptr || n <= 0)
            return nullptr;
        ListNode* fast = head;
        ListNode* slow = head;
        int k = n - 1;
        while(k--){
            if(fast->next == NULL)
                return nullptr;
            fast = fast->next;
        }
        while(fast->next){
            fast = fast->next;
            slow = slow->next;
        }
        return slow;
    }
};
```



