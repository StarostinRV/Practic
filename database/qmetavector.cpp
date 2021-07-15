#include "qmetavector.h"

//QMetaVector::QMetaVector(QObject *parent) : QObject(parent)
//{

//}


QString QMetaVector::ToString()
{
    QString res;
    for(int i=0; i < values.size() ;i++)
        res+=QString::number(values[i])+";";
    return res;
}
