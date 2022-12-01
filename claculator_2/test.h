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

 int addition_(QString);
 int multiplication(QString);
  int division(QString);
   int substraction(QString);

   void distroying();
};

#endif // TEST_H
