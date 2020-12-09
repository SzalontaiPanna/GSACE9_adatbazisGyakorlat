#include <stdio.h>
#include <stdlib.h>
int darabszam (int*osztalyzatok,int size);
float atlag (int*osztalyzatok,int size);
int main()
{
    int osztalyzatok[10]={1,5,4,3,2,1,5,5,3,2};
    int size=sizeof(osztalyzatok)/sizeof(int);
    int db= darabszam(osztalyzatok,size);
    printf("%d eredmenyes er\n", db );
    float atlagkiir =atlag(osztalyzatok,size);
    printf("%.2f az atlaga a jegyeknek ", atlagkiir );
    return 0;
}
int darabszam (int*osztalyzatok,int size)
{
    int i=0;
    int db=0;
    for(i=0;i<size;i++)
    {
        if(osztalyzatok[i]>1)
        {
            db++;
        }
    }
   return db;
}
float atlag (int*osztalyzatok,int size)
{
    int i=0;
    int osszeg=0;
    float atlag=0;
    for(i=0;i<size;i++)
    {
        osszeg=osszeg+osztalyzatok[i];
    }
    atlag=(float)osszeg/size;
    return atlag;
}
