#include "qdoublevector.h"

//QDoubleVector::QDoubleVector(QObject *parent) : QObject(parent)
//{

//}

QString QDoubleVector::ToString()
{
    QString result;

    for (int i =0; i<value.size() ; i++)
        result = result + QString::number(value[i])+"/";
    return result;
}
void QDoubleVector::SetValue(std::vector<double> data)
{
    value.clear();
    value = data;
}

double QDoubleVector:: GetValue(int i)
 {
     if (value.size()>=i) return 0;
     return value[i];
 }

void QDoubleVector::SetSize(int size)
 {
    for(int i= value.size(); i<size; i++)
        value.push_back(0);
 }


