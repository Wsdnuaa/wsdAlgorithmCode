/*并查集算法实现
*/
#include<vector>
#include<iostream>
class unionFind
{
private:
    /* data */
public:
    unionFind(int N)
    {
        count = N;//总数置N
        parent = new int[N];//分配N个parent的动态数组
        for(int i =0;i<N;i++)
            parent[i] = i;
        rank = new int[N];
        for(int i =0;i<N;i++)
            rank[i] = 1;//树的起始深度位1

    };
    ~unionFind()  {
        delete []parent;
        delete []rank;
        };//析构函数
    void makeUnion(int p,int q){
        int pRoot = find(p);
        int qRoot = find(q);
        if(pRoot == qRoot) return;
        //把小树附加到大树上
        if(rank[i]<rank[j]){
            parent[i]= j;
            rank[j] +=rank[i];
        }
        else if(rank[i]>=rank[j])
        {
            parent[j] =i;
            rank[i] +=rank[j];
        }
        parent[pRoot] =qRoot;
        count--;

    };

    int find(int p){
        while(p !=parent[p]) p =parent[p];//直到找到根节点停下来,也相当于进行了路径压缩
        return p;
    };
    bool connected(int p,int q){
        return find(p)==find(q);
    };
    int getCount(){
        return count;
    };
    private:
    int *parent;//父节点parent的数组
    int *rank;//分量rank,树的层级
    int count;//树的数量

};