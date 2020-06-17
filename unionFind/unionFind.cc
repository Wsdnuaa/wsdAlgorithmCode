#include"unionFind.h"

int main(){
    const int N=9;
    unionFind *UF  = new unionFind(N);
    UF->makeUnion(1,3);
    UF->makeUnion(1,5);
    UF->makeUnion(4,5);
    UF->makeUnion(2,5);
    std::cout<<"find 1:"<<UF->find(1)<<std::endl;
    std::cout<<"find 4:"<<UF->find(4)<<std::endl;
    std::cout<<"find :"<<UF->connected(1,4)<<std::endl;
    std::cout<<"count : "<<UF->getCount()<<std::endl;

}

void TEST(){
    
}