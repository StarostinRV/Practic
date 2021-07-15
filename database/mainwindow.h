#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include <vector>
#include <string>
#include <QTableWidget>
#include <QChar>
#include <QJSEngine>

QT_BEGIN_NAMESPACE

using namespace std;

namespace Ui { class MainWindow; }

QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:

    MainWindow(QWidget *parent = nullptr);

    vector<vector<QString>> ReadTableFromFile(QString file_name);

    QString ReadScriptFromFile(QString file_name);

    void InitQTableView(vector<vector<QString>> data);

    bool ChekFormula(QString formula);

    void Calculate(QString formula);

    vector<QString> Calc(QString formula,int row);

    QString ActionsOnOperands(QString A, QString B, QChar action, vector<vector<QString>> &vec);

    ~MainWindow();

private slots:
    void on_pushButton_OpenFile_clicked();

    void on_pushButton_Calculate_clicked();

private:
    Ui::MainWindow *ui;

    QTableModel *table_model;

    QJSEngine js_engine;

    QString script;
};
#endif // MAINWINDOW_H
