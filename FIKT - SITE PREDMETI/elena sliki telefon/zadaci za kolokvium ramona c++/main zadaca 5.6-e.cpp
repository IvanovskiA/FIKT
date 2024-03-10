// Elena Desanoska INKI-767
#include<cstdlib>
#include<iostream>
#include<math.h>
using namespace std;
int poeni,zz;
float x,y;
int main();
{

    cout<<"Vnesi gi kordinatite na pogodokot vo metata:\n";
    cout<<"x=";cin>>x;
    cout<<"y=";cin>>y;
    int poeni=0;
    int zz=(sqrt(pow(x, 2)+pow(y, 2)));
    zz++;
    switch(zz)
    {
        case 1:poeni=10;break;
        case 2:poeni=9; break;
        case 3:poeni=8; break;
        case 4:poeni=7; break;
        case 5:poeni=6; break;
        case 6:poeni=5; break;
        case 7:poeni=4; break;
        case 8:poeni=3; break;
        case 9:poeni=2; break
        case 9:poeni =2;break;
        case 10:poeni=1;break;
        defaint:poeni=o;break;
         }
         cout<<"\nPogodokt nosi\t"<<poeni<<"/troeni";
         return 0;
}
