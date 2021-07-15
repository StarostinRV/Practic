#ifndef QMETAVECTOR_H
#define QMETAVECTOR_H

#include <QObject>
#include <vector>

using namespace std;

class QMetaVector : public QObject
{
    Q_OBJECT
public:
    //explicit QMetaVector(QObject *parent = nullptr);

    Q_INVOKABLE QMetaVector() {}

    vector<double> values;

    QString ToString();



    QMetaVector& operator+(const  double& data)
    {
        for(int i=0; i<values.size() ;i++)
            values[i] += data;
        return *this;
    }

    QMetaVector& operator*(const  double& data)
    {
        for(int i=0; i<values.size() ;i++)
            values[i] *= data;
        return *this;
    }

    QMetaVector& operator-(const  double& data)
    {
        for(int i=0; i<values.size() ;i++)
            values[i] -= data;
        return *this;
    }

    QMetaVector& operator/(const  double& data)
    {
        for(int i=0; i<values.size() ;i++)
            values[i] /= data;
        return *this;
    }


    QMetaVector& operator+(const  QMetaVector& data)
    {
        for(int i=0; i<values.size() ;i++)
            values[i] =  data.values[i];
        return *this;
    }

    QMetaVector& operator*(const  QMetaVector& data)
    {
        for(int i=0; i<values.size() ;i++)
            values[i] *= data.values[i];
        return *this;
    }

    QMetaVector& operator-(const  QMetaVector& data)
    {
        for(int i=0; i<values.size() ;i++)
            values[i] -= data.values[i];
        return *this;
    }

    QMetaVector& operator/(const  QMetaVector& data)
    {
        for(int i=0; i<values.size() ;i++)
            values[i] /= data.values[i];
        return *this;
    }

    QMetaVector& operator=(const  QMetaVector& data)
    {
        for(int i=0; i<values.size() ;i++)
            values[i] = data.values[i];
        return *this;
    }

    QMetaVector& operator=(const  double& data)
    {
        values.clear();
        values.push_back(data);
        return *this;
    }

signals:

};

#endif // QMETAVECTOR_H
