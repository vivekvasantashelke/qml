#ifndef TEST_H
#define TEST_H
#include<iostream>
#include <QObject>
#include <QDebug>
using namespace std;
class Test : public QObject
{
    Q_OBJECT
public:
    explicit Test(QObject *parent = nullptr);

    //Normal function


signals:

public slots:
    void storege1();
   int number(string);



   void number0();
   void number1();
   void number2();
   void number3();
   void number4();
   void number5();
   void number6();
   void number7();
   void number8();
   void number9();

};

#endif // TEST_H
