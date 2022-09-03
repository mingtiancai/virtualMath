#include "MyMethod.h"
#include <QDebug>

MyMethod::MyMethod(QObject *parent) : QObject(parent)
{

}

void MyMethod::getMsg(QString msg1,QString msg2)
{
    QString msg =QString("%1:%2").arg(msg1).arg(msg2);
    qDebug()<<"合并之后的字符串:"<<msg;
}

int MyMethod::add(int a,int b)
{
    return a+b;
}

void MyMethod::printMsg()
{
    qDebug()<<"QML调用C++实例";
}

