#ifndef QDOUBLEVECTOR_H
#define QDOUBLEVECTOR_H

#include <QObject>
#include <vector>


class QDoubleVector : public QObject
{
    Q_OBJECT
public:
    //explicit QDoubleVector(QObject *parent = nullptr);
    Q_INVOKABLE QDoubleVector() {};

    std::vector<double> value;
    QString ToString();
    void SetValue(std::vector<double>  data);
    double GetValue(int i);
    void SetSize(int size);








    QDoubleVector& operator-(const  double& data)
    {
        for(int i=0; i<value.size() ;i++)
            value[i] -= data;
        return *this;
    }

    QDoubleVector& operator/(const  double& data)
    {
        for(int i=0; i<value.size() ;i++)
            value[i] /= data;
        return *this;
    }




    QDoubleVector& operator*(const  QDoubleVector& data)
    {
        for(int i=0; i<value.size() ;i++)
            value[i] *= data.value[i];
        return *this;
    }

    QDoubleVector& operator-(const  QDoubleVector& data)
    {
        for(int i=0; i<value.size() ;i++)
            value[i] -= data.value[i];
        return *this;
    }

    QDoubleVector& operator/(const  QDoubleVector& data)
    {
        for(int i=0; i<value.size() ;i++)
            value[i] /= data.value[i];
        return *this;
    }

    QDoubleVector& operator=(const  QDoubleVector& data)
    {
        for(int i=0; i<value.size() ;i++)
            value[i] = data.value[i];
        return *this;
    }

    QDoubleVector& operator<<(const  double& data)
    {
        value.clear();
        value.push_back(data);
        return *this;
    }

public slots:

    void m(int a)
    {
        for(int i=0; i<value.size() ;i++)
            value[i] += a;
    }

    void d(int a)
    {
        for(int i=0; i<value.size() ;i++)
            value[i] /= a;
    }

    void mv(double *a)
    {
        for(int i=0; i<value.size() ;i++)
            value[i] += a[i];
    }

    double* getarr()
    {
        return &(value[0]);
    }




};

#endif // QDOUBLEVECTOR_H
