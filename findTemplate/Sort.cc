#include"Sort.h"
int main(){
    int a[17] ={11,9,8,32,6,5,60,3,2,1,7,4,33,21,41,1,3};
    Sort *Ssort = new Sort(a,17);
    //test exch
    int v= 1;
    int w =3;
    Ssort->exch(v,w);
    //std::cout<<v<<"  "<<w<<std::endl;
   // Ssort->printSortedArray();
    //Ssort->selectSort();
    //Ssort->insertSort();
    //Ssort->shellSort();
   Ssort->quickSort(0,16);
    //Ssort->mergeSort(0,16);
    //Ssort->mergeSortB2U(0,16);
    Ssort->printSortedArray();


}