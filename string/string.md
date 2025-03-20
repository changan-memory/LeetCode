# 917.仅仅反转字母

## 链接

https://leetcode-cn.com/problems/reverse-only-letters/submissions/

## 我的解法

```c++
class Solution {
public:
	bool isLetter(const char ch) {
		if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z'))
			return true;
		else
			return false;
	}
	string reverseOnlyLetters(string s) {
		if (s.empty())
			return s;
		int left = 0, right = s.size() - 1;

		while (left < right) {
			while (!isLetter(s[left])) {
				if (left >= right)	
					break;
				++left;
			}
			while (!isLetter(s[right])) {
				if (left >= right) 
					break;
				--right;
			}
			swap(s[left], s[right]);
			++left;
			--right;
		}
		return s;
	}
};
```

## 总结错误点

+ **while**内，我最初的写法(==错误写法==)是这样的

```c++
while (left < right) {
	while (!isLetter(s[left])) { //这样写，
       ++left;
       if(left >= right)
           break;
    }
    //这样写的话，有可能上面的while循环走完，left就已经和right相等了，之后，
    //判断不是单词 right--，下面会进行字符的交换
	while (!isLetter(s[right])) {
        --right;
        if(left >= right)
            break;
    }
    //应该一进入循环，就判断，left和right的关系。
    //先判断是否需要+或-，在进行+或-
    swap(s[left], s[right]);
	++left;
	--right;
}
```



## 大神解法

```c++
class Solution {
public:
	bool isLetter(const char ch){
		if(ch >= 'a' && ch <= 'z')
			return true;
		if(ch >= 'A' && ch <= 'Z')
			return true;
		return false;
	}
	string reverseOnlyLetters(string s) {
		if(s.empty()){
			return s;
		}
		size_t begin = 0, end = s.size()-1;
		while(begin < rend){
			while(begin < end && !isLetter(s[left]))
				++begin;
			while(begin < end && !isLetter(s[right]))
				--end;
			swap(s[begin], s[end]);
			++begin;
			--end;
		}
		return s;
	}
};
```

