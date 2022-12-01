#include "test.h"
#include <iostream>
using namespace std;
int adddata[10];
int i=0;
int data_=0;

Test::Test(QObject *parent) : QObject(parent)
{

}

void Test::add0()
{
  adddata[i]=0;
}


void Test::add1()
{
  adddata[i]=1;
}

void Test::add2()
{
  adddata[i]=2;

}
void Test::add3()
{
  adddata[i]=3;

}

int Test::addition_(QString d)
{
    int store = d.toInt();
    data_=data_+store;
//    for(int j;adddata[j];j++)
//    {
// data_=data_+adddata[i];
//cout<<data_;
//    }
}





//for(int j;adddata[j];j++)
//{
//   cout<<adddata[j];

//}
