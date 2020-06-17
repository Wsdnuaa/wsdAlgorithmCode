#include<iostream>
#include<algorithm>
class Sort
{
private:
    /* data */
public:
    Sort(int *a,const int n):_a(a),N(n){aux = new int[N];};
    ~Sort(){
        delete []aux;
    };
    //选择排序思路
    void selectSort(){
        for(int i = 0;i<N;i++)
        {
            int min = i;
            for(int j = i+1;j<N;j++)
            {
                if(_a[j]<_a[min])
                    min =j;          
            }
            this->exch(_a[i],_a[min]);

        }
    };
    //插入排序
    void insertSort(){
        for(int i = 1;i<N;i++)
        {
            for(int j=i;j>0&&less(_a[j],_a[j-1]);j--)
                this->exch(_a[j],_a[j-1]);
        }
    }
    bool less(int v,int w){
        return v<w;}
    void exch(int &v,int &w){
        // i = i+w;
        // w = i-w;
        // i = i-w;
        int temp = v;
        v =w;
        w = temp;
    }
    //希尔排序
    void shellSort(){
        int h=1;
        while(h<N/3) h = 3*h+1; //1,4,13,40,121,364
        while(h>=1)
        {
            for(int i = h;i<N;i++)
            {
                for(int j =i;j>=h&&less(_a[j],_a[j-h]);j-=h)
                    this->exch(_a[j],_a[j-h]);
                
            }
            h = h/3;
        } 

    };
    //快速排序
    void quickSort(int lo,int hi){
        if (hi<=lo) return;//相遇及终止
        int j = partition(lo,hi);
        quickSort(lo,j-1);
        quickSort(j+1,hi);


    };
    int partition(int lo, int hi){
        int i= lo;
        int j = hi+1;
        int randomIndex = genRandomIndex(lo,hi);//注意不能i和j
        int v = _a[randomIndex];
        this->exch(_a[lo],_a[randomIndex]);
        while(1){
            //两头双指针,都移动到第一个需要交换数上
            while(less(_a[++i],v)&&i<=hi) ;//if(i==hi) break;
            while(less(v,_a[--j])&&j>=lo) ;//if(j==lo) break;
            if(i >= j) break;
            this->exch(_a[i],_a[j]);
        }
        this->exch(_a[lo],_a[j]);
        return j;
    }
    //归并排序从顶往下
    void mergeSort(int lo,int hi){
        if(hi<=lo) return;
        int mid = (lo+hi)/2;
        mergeSort(lo,mid);
        mergeSort(mid +1,hi);
        merge(lo,mid,hi);
    };
    //归并排序自下往上
    void mergeSortB2U(int lo,int hi){
        for(int sz = 1;sz<N;sz=sz+sz)
            for(int lo=0 ;lo<N-sz;lo+=sz+sz)
                merge(lo,lo+sz-1,std::min(lo+sz+sz-1,N-1));//这个min以为,有时候最后半个数组可能不全,这样可以防止溢出
    }
    //归并的部分merge
    void merge(int lo ,int mid ,int hi){
        int i = lo;
        int j = mid + 1;
        for(int k = lo; k <= hi; k++)
            {aux[k] = _a[k];}
         for(int k = lo; k <= hi; k++)
        {
            if(i>mid) _a[k] = aux[j++];//如果前半部分用光了,剩下的把后面依次当进去就行
            else if(j>hi) _a[k] = aux[i++];//如果后半部分用光了,剩下的把前面依次当进去就行
            else if(less(aux[j],aux[i])) _a[k] = aux[j++];//谁小来谁
            else            _a[k] = aux[i++];
        }   

    };

    void printSortedArray()
    {
        for(int i = 0;i<N;i++)
            std::cout<<_a[i]<<std::endl;
    }
    int genRandomIndex(int lower,int upper){

        return int((rand() % (upper-lower+1))+ lower);
    };
    
    private:

    int *_a ;
    int N;
    int *aux;
};

