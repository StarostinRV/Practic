#ifndef QTABLEMODEL_H
#define QTABLEMODEL_H

#include <QAbstractTableModel>
#include <vector>
#include <QString>

using namespace std;

class QTableModel : public QAbstractTableModel
{
    Q_OBJECT

public:
    //explicit QTableModel(QObject *parent = nullptr);

    Q_INVOKABLE QTableModel() {}

    // Basic functionality:



    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

    void appendColum(vector<double> colum, QString header_name);
    void setItems (vector< vector<QString> > data);
    void setResult(vector<double> data);

    vector< vector<double> > GetItems();
    vector< double > GetVector(int i);
    vector<double> GetResults();

    double GetResult(int i);
    double GetItem(int i, int j);

private:
    vector< vector <double> > values;
    vector<QString> header;
    vector<QString> type;
    vector<double> result;
};

#endif // QTABLEMODEL_H
