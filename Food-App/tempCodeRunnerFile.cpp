#include<iostream>
using namespace std;

int main(){
    int num;
    
    cout<<"Enter any number: ";
    cin>>num;

//user enter a number and the number equals to 1 , 2 , 3, 5, 7, 11, 13, ......n  >>> primary number

//if user enter  4, 6, 8, 9, 10 , 12 >>>> not a primary number
   for(int i=1;i<=num;i++){
    for(int j=2;j<=i;j--)
      {
        bool isfound;
        if(i%j==0){
            isfound=false;
            break;
        }
        if(isfound){
            cout<<i<<endl;
        }
      }
    
   
    
   }

   
}