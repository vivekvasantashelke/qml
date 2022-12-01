#include "test.h"
#include <iostream>
using namespace std;
int adddata[10];
int i=0;
int data_=0,data1=1,datam=0,datadiv=1;
int flag=0;
int n=0,s=0;
 int store1,store2,sub,sub2;
Test::Test(QObject *parent) : QObject(parent)
{

}


int Test::addition_(QString d)
{
    int store = d.toInt();
    data_=data_+store;

}


int Test::multiplication(QString d)
{
    int store = d.toInt();
    data1=data1*store;

}

int Test::division(QString d)
{
    if(n==0)
    {
     store1 = d.toInt();
     datadiv=store1;
     n=1;
    }
   else
    {
         store2 = d.toInt();
     datadiv=datadiv / store2;

    }
}
int Test::substraction(QString d)
{
    if(s==0)
    {
        sub = d.toInt();
        datam=sub;
        s=1;
    }
    else{
    sub2 = d.toInt();
    datam=datam-sub2;
    }
}

void Test::distroying()
{
    data_=0,data1=1,datam=0,datadiv=1;
     n=0,s=0;
      store1=0,store2=0,sub=0,sub2=0;
}

