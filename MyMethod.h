#ifndef MYMETHOD_H
#define MYMETHOD_H

#include <QObject>

class MyMethod : public QObject
{
    Q_OBJECT
public:
    explicit MyMethod(QObject *parent = nullptr);

    Q_INVOKABLE void getMsg(QString msg1,QString msg2);
    Q_INVOKABLE int add(int a,int b);
    Q_INVOKABLE void printMsg();

public slots:
};

#endif
