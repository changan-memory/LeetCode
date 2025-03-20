# 杨辉三角1

https://leetcode.cn/problems/pascals-triangle/description/?envType=problem-list-v2&envId=array

```c++
// 涉及resize / operator[]
// 核心思想：找出杨辉三角的规律，发现每一行头尾都是1，中间第[j]个数等于上一行[j-1]+[j]
class Solution {
public:
    vector<vector<int>> generate(int numRows) {
        vector<vector<int>> vv;
        vv.resize(numRows);    //给二维数组设置行数
        //初始化每一行
        for(size_t i = 0;i<vv.size();++i){
            vv[i].resize(i+1, 0);  //初始化每一行的大小，先初始化为0
            vv[i][0] = vv[i][i] = 1;    //第一个和最后一个初始化为1
        }
        for(size_t i = 0;i<vv.size();++i){
            for(size_t j = 0;j<vv[i].size();++j){
                if(vv[i][j] == 0){
                    vv[i][j] = vv[i-1][j] + vv[i-1][j-1];
                }
            }
        }
        return vv;
    }
};
```

# 杨辉三角2

https://leetcode.cn/problems/pascals-triangle-ii/description/?envType=problem-list-v2&envId=array

```c++
class Solution {
public:
    vector<int> getRow(int rowIndex) {
        // if(rowIndex == 0)
        //     return vector<int>(1, 1);
        // if(rowIndex == 1)
        //     return vector<int>(2, 1);
        //建立二维数组
        vector<vector<int>> vv;
        vv.resize(rowIndex+1);
        //初始化每一行
        for(int i = 0;i<vv.size();++i){
            vv[i].resize(i+1);
            vv[i][0] = vv[i][i] = 1;
        }
        //特殊情况
        if(rowIndex == 0)
            return vv[0];
        if(rowIndex == 1)
            return vv[1];
        //行数多时，使其成为杨辉三角
        for(int i = 2;i<vv.size();++i){
            for(int j = 1;j<vv[i].size()-1;++j){
                vv[i][j] = vv[i-1][j] + vv[i-1][j-1];
            }
        }
        //返回vv[rowIndex]
        return vv[rowIndex];
    }
};
//可以思考，对该方法多进行优化
```

