#include "qtablemodel.h"
#include <vector>
#include <QDate>
#include <QDateTime>
#include <QMessageBox>

//QTableModel::QTableModel(QObject *parent): QAbstractTableModel(parent)
//{
//    header.push_back("Результат вычислений");
//}

int QTableModel::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid() || values.size() == 0)
        return 0;
    return values[0].size();
}

int QTableModel::columnCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;
    return (values.size() !=0)?values.size()+1:0;
}

QVariant QTableModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();
    QVariant res;
    if (role == Qt::DisplayRole)
    {
        if (index.row() == 0)  res = header[index.column()];
        else if (index.column() == 0)  res = (index.row()<result.size())?result[index.row()-1]:QVariant();
        else if (type[index.column()]== "Double") res = values[index.column()-1][index.row()-1];
    }
    return res;
}

void QTableModel::appendColum(vector<double> colum, QString header_name)
{
    beginResetModel();
    values.push_back(colum);
    header.push_back(header_name);
    endResetModel();
}

void QTableModel::setItems(vector<vector<QString>> Data)
{
    beginResetModel();
    for(int i=0;i<values.size();i++)
        values[i].clear();
    values.clear();
    header.clear();
    type.clear();
    header.push_back("Результат вычислений");
    result.clear();
    for (int i = 0; i<Data.size(); i++)
    {
        vector<double> term;
        QString str_type="Double";
        if (Data[i][1].indexOf("/") != -1) str_type = "Date";
        if (Data[i][1].indexOf(":") != -1) str_type = "Time";
        if ((Data[i][1].indexOf("/") != -1) && (Data[i][1].indexOf(":") != -1)) str_type = "DateTime";
        for (int j = 1; j<Data[0].size(); j++)
        {
            if (str_type == "Double") term.push_back(Data[i][j].toDouble());
        }
        if (term.size() != 0)
        {
            header.push_back(Data[i][0]);
            type.push_back(str_type);
            values.push_back(term);
        }
    }
    endResetModel();
}

void QTableModel::setResult(vector<double> data)
{
    beginResetModel();
    result.clear();
    result = data;
    endResetModel();
}

vector< vector<double> > QTableModel::GetItems()
{
    return values;
}
vector< double > QTableModel::GetVector(int i)
{
    vector< double > res;
    if (i >= values.size()) return res;
    return values[i];
}


vector<double> QTableModel::GetResults()
{
    return result;
}

double QTableModel::GetResult(int i)
{
    if (i >= result.size()) return 0;
    return result[i];

}

double QTableModel::GetItem(int i, int j)
{
    if (i >= values.size()) return 0;
    if (j >= values[0].size()) return 0;
    return values[i][j];
}
