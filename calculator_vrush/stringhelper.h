#ifndef STRINGHELPER_H
#define STRINGHELPER_H

#include<QObject>

class StringHelper : public QObject
    {
        Q_OBJECT
    public slots:
    int apple(int a,int b)

    {

     int c = a + b;

     return c;

    }


};

#endif // STRINGHELPER_H
