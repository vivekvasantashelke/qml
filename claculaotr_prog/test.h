#ifndef TEST_H
#define TEST_H

#include <QObject>
#include <QDebug>

class Test : public QObject
{
    Q_OBJECT
public:
    explicit Test(QObject *parent = nullptr);

    //Normal function


signals:

public slots:
 void add0();
 void add1();
 void add2();
 void add3();
 int addition_(QString);
};

#endif // TEST_H
