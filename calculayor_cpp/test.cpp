#include "test.h"
#include<QDebug>
#include <qqml.h>
#include <iostream>
using namespace std;
int data1,data2;
 // property string i;
Test::Test(QObject *parent) : QObject(parent)
{

}

void Test::storege1()
{  //int num = stoi();

//qInfo()<<num;
//cout<<num;
 //cout<<text;
//data1=stoi(text);
 // // data=text.toInt();
  qInfo() << "Bark Bark Bark";

   // qDebug()<<data1;
}


int Test::number(string a)
{
    int num = stoi(a);
    //Return a number
    qInfo() << "Called number()";
     qDebug()<<num;
    return 42;
}


void Test::number0(){}
void Test::number1(){}
void Test::number2(){}
void Test::number3(){}
void Test::number4(){}
void Test::number5(){}
void Test::number6(){}
void Test::number7(){}
void Test::number8(){}
void Test::number9(){}
//void Test::number0(){}
//void Test::number0(){}


int addition(int a=0,int b=0)
{
    int c=a+b;
    cout<<c;
            return c;
}


