#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "qtablemodel.h"
#include "qdoublevector.h"
#include "qmetavector.h"


#include <QString>
#include <QChar>
#include <QFileDialog>
#include <QMessageBox>
#include <fstream>
#include <vector>
#include <QVector>
#include <QFile>
#include <QTime>
#include <QTimeEdit>
#include <QTimeLine>



using namespace std;

MainWindow::MainWindow(QWidget *parent): QMainWindow(parent), ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    table_model = new QTableModel();
    //script = ReadScriptFromFile("scriptforcalculate.qs");
    //QJSValue value = js_engine.newQObject();
    //js_engine.globalObject().setProperty("table", value);

    //js_engine.globalObject().setProperty("table", value);

    //QJSValue result = js_engine.evaluate(script);

    //if (result.isError()) qDebug()<< "Uncaught exception at line"<<result.property("lineNumber").toInt()<< ":" << result.toString();
    //else QMessageBox::about(this,"",result.toString());



    QJSValue value = js_engine.newQMetaObject(&QTableModel::staticMetaObject);
    js_engine.globalObject().setProperty("MetaTable___", value);

    value = js_engine.newQMetaObject(&QMetaVector::staticMetaObject);
    js_engine.globalObject().setProperty("vecto___", value);







    //value = js_engine.newQObject(table_model);
    //js_engine.globalObject().setProperty("table", value);
    //js_engine.g
    //GetResults





}

MainWindow::~MainWindow()
{
    delete table_model;
    delete ui;
}

void MainWindow::on_pushButton_OpenFile_clicked()
{
    QString file_name;
    QFileDialog *diolog = new QFileDialog();
    file_name = diolog->getOpenFileName();
    if (file_name == "") return;
    InitQTableView(ReadTableFromFile(file_name));
}

void MainWindow::on_pushButton_Calculate_clicked()
{
//-------------------------------------------------v1

//    QString dd;
//    vector<double> term;
//    QJSValue value = js_engine.newArray(table_model->columnCount());
//    js_engine.globalObject().setProperty("col",value);
//    for (int j = 0; j<table_model->rowCount(); j++ )
//    {
//        value.setProperty(1,table_model->GetResult(j));
//        for (int i = 0; i<=table_model->columnCount(); i++ )
//        {
//            value.setProperty(i+2,table_model->GetItem(i,j));
//        }
//        QJSValue result = js_engine.evaluate(ui->lineEdit_Reader->text());
//
//        term.push_back(result.toVariant().toDouble());
//    }
//    table_model->setResult(term);
//    term.clear();

//-------------------------------------------------v2
//    QString dd;
//    vector<double> term;
//    for (int j = 0; j<table_model->rowCount(); j++ )
//    {
//        dd = "var col = []; ";
//        dd += "col[1] = "+QString::number(table_model->GetResult(j))+"; ";
//        for(int i=0; i<table_model->columnCount(); i++)
//        {
//            dd += "col["+QString::number(i+2)+"] = "+QString::number(table_model->GetItem(i,j))+"; ";
//        }
//        dd += ui->lineEdit_Reader->text();
//        QJSValue result = js_engine.evaluate(dd);
//        term.push_back(result.toVariant().toDouble());
//    }
//    table_model->setResult(term);
//    term.clear();

//-------------------------------------------------------------------------------------

//    QMetaVector *col = new  QMetaVector();
//    col->values = table_model->GetVector(5);
//    QJSValue value = js_engine.newQObject(col);
//    js_engine.globalObject().setProperty("res", value);


//    qDebug() << value.("ToString").toBool();

    vector<double> term;
    QJSValue value = js_engine.newArray(table_model->columnCount()-1);

    for (int i = 0; i<table_model->columnCount(); i++ )
    {

        QDoubleVector *vector = new QDoubleVector();
        vector->SetValue(table_model->GetVector(i));
        QJSValue col = js_engine.newQObject(vector);
        value.setProperty(i+2,col);
        //js_engine.globalObject().setProperty("col"+QString::number(i+2),col);
    }

    js_engine.globalObject().setProperty("col",value);

    QString text = ui->lineEdit_Reader->text();

    QDoubleVector res;
    res.SetSize(table_model->rowCount());
    QJSValue val = js_engine.newQObject(&res);
    js_engine.globalObject().setProperty("res",val);

    QJSValue result;

    if(text.indexOf("res")==-1)
    {
         result = js_engine.evaluate(text);
         term.push_back(result.toVariant().toDouble());
    }
    else
    {
        QJSValue result = js_engine.evaluate(text);
        QMessageBox::about(this,"",res.ToString());
        term = res.value;
    }

    if (result.isError()) qDebug()<< "Uncaught exception at line"<<result.property("lineNumber").toInt()<< ":" << result.toString();
    else table_model->setResult(term);


}


vector<vector<QString>> MainWindow::ReadTableFromFile(QString file_name)
{
    string str;
    vector<vector<QString>> result;
    ifstream input;

    input.open(file_name.toStdString().c_str(), ios_base::in);
    if (!input.is_open())
    {
        QMessageBox::critical(this,"Сообщение","Файл неможет быть открыт");
        return result;
    }
    getline(input,str);
    str += ";";
    while (str != "")
    {
        vector<QString> term;
        term.push_back(QString::fromStdString(str.substr(0,str.find(';'))));
        str = str.substr(str.find(';')+1,str.length());
        result.push_back(term);
    }
    while(!input.eof())
    {
        getline(input,str);
        str += ";";
        QString STR = QString::fromStdString(str);

        for (int i = 0; (str != "") && (STR.count(";") == result.size()) ; i++)
        {
            string substr = str.substr(0,str.find(';'));
            str = str.substr(str.find(';')+1,str.length());
            result[i].push_back(QString::fromStdString(substr));
            int term = result[i][result[i].size()-1].indexOf(',');
            if (term != -1) result[i][result[i].size()-1][term] = '.';

        }
    }
    input.close();
    return result;
}

QString MainWindow::ReadScriptFromFile(QString file_name)
{
    QFile scriptFile(file_name);
    if (!scriptFile.open((QIODevice::ReadOnly))) return "";
    QTextStream stream((&scriptFile));
    QString contents = stream.readAll();
    scriptFile.close();
    return contents;
}


void MainWindow::InitQTableView(vector<vector<QString>> data)
{
    ui->tableView->setUpdatesEnabled(true);
    table_model->setItems(data);
    ui->tableView->setModel(table_model);
    ui->tableView->update();
}


bool MainWindow::ChekFormula(QString formula)
{
    return true;
    bool result = true;
    for(int i=0; i < formula.length(); i++)
    {
        bool flag = ((formula[i]>='a') && (formula[i]<='z'));
        flag = flag || ((formula[i]>='0') && (formula[i]<='9'));
        flag = flag || (formula[i] =='{') || (formula[i]=='}');
        flag = flag || (formula[i] =='(') || (formula[i]==')');
        flag = flag || (formula[i] =='+') || (formula[i]=='*');
        flag = flag || (formula[i] =='-') || (formula[i]=='/');
        flag =  flag || (formula[i] ==' ');
        result = result && flag;
    }
    return result;
}

void MainWindow::Calculate(QString formula)
{
//    QString str;
//    formula = formula.toLower();
//    for(int i=0; i < formula.length(); i++)
//    {
//        if (formula[i] !=' ')str = str + formula[i];
//    }
//    formula = str;
//    Calc(formula,1);

//    for(int i=1; i < ui->tableWidget_table->rowCount()-1; i++)
//    {
//            QString str = Calc(formula,i);
//            ui->tableWidget_table->item(i,0)->setText(str);
//            ofstream ff;
//            ff.open(str.toStdString().c_str(),std::ios_base::app|std::ios_base::out);

//            ff<<i<<"  "<<str.toStdString()<<"  "<<endl;
//            ff.close();
//    }
}

vector<QString> MainWindow::Calc(QString formula,int row)
{
    /*vector<vector<QString> > vec;
    bool isExit = false;
    while(!isExit)
    {
        int begin, end;
        QChar symbol;
        QString term_mid;
        if (formula.lastIndexOf("(") != -1)
        {
            begin = formula.lastIndexOf("(");
            end = formula.indexOf(")",begin);
            vector<QString> term_vec = Calc(formula.mid(begin+1,end-begin),row);
            term_mid = term_vec[0];
            if (term_vec.size() > 1)
            {
                vec.push_back(term_vec);
                term_mid = "vec" + QString::number(term_vec.size()-1);
            }
        }
        else if(formula.indexOf("*") != -1) symbol = '*';
        else if(formula.indexOf("/") != -1) symbol = '/';
        else if(formula.indexOf("+") != -1) symbol = '+';
        else if(formula.indexOf("-") != -1) symbol = '-';
        else isExit = true;

        if (!isExit)
        {

            int index = formula.indexOf(symbol);
            for (int i = index-1;(i>-1) && (formula[i]!='*') && (formula[i]!='/')&&(formula[i]!='+')&&(formula[i]!='-'); i--)
                begin = i;
            for (int i = index+1;(i<formula.length()) && (formula[i]!='*') && (formula[i]!='/') && (formula[i]!='+') && (formula[i]!='-'); i++)
                end = i;
            QString Right = formula.mid(begin,index-begin);
            QString Left = formula.mid(index+1,end-index);
            if (Right.indexOf("col")!=-1)
            {
                vector<QString> term_vec;
                for(int i=0;i<ui->tableWidget_table->rowCount(); i++)
                    term_vec.push_back(ui->tableWidget_table->item(i,Right.mid(3,Right.length()-2).toInt()-2)->text());
                vec.push_back(term_vec);
                Right = "vec" + Right.mid(3,Right.length()-2);
            }
            if (Left.indexOf("col")!=-1)
            {
                vector<QString> term_vec;
                for(int i=0;i<ui->tableWidget_table->rowCount(); i++)
                    term_vec.push_back(ui->tableWidget_table->item(i,Left.mid(3,Left.length()-2).toInt()-2)->text());
                vec.push_back(term_vec);
                Left = "vec" + Left.mid(3,Left.length()-2);
            }
            QString term_mid = ActionsOnOperands(Left,Right,symbol,vec);
        }
        QString term_left = formula.left(begin);
        QString term_right = formula.right(formula.length()-end-1);
        formula = term_left + term_mid + term_right;
    }
    if (formula[0] == 'v') return vec[formula.mid(3,formula.length()-2).toInt()];
    vector<QString> term_vec;
    term_vec.push_back(formula);
    return term_vec;*/
}

QString MainWindow::ActionsOnOperands(QString left, QString right, QChar action, vector<vector<QString>> &vec)
{
    int r, l;
    QString result;
    if (right[0] == 'v') r = right.mid(3,right.length()-2).toInt();
    if (left[0] == 'v') l = left.mid(3,left.length()-2).toInt();
    if (left[0] != 'v' && right[0] != 'v')
    {
        if (action == '*') result = QString::number(left.toDouble() * right.toDouble());
        else if (action == '+') result = QString::number(left.toDouble() + right.toDouble());
        else if (action == '/') result = QString::number(left.toDouble() / right.toDouble());
        else if (action == '-') result = QString::number(left.toDouble() - right.toDouble());
    }
    else
    {
        if (right[0] == 'v')
        {
            swap(left,right);
            swap(l,r);
        }

        for (int i = 0; i < vec[0].size(); ++i)
        {
            double term;
            if (action == '*') term = (right[0] == 'v')?vec[l][i].toDouble()*vec[r][i].toDouble():vec[l][i].toDouble()*right.toDouble();
            else if (action == '+') term = (right[0] == 'v')?vec[l][i].toDouble()+vec[r][i].toDouble():vec[l][i].toDouble()+right.toDouble();
            else if (action == '/') term = (right[0] == 'v')?vec[r][i].toDouble()/vec[l][i].toDouble():vec[l][i].toDouble()/right.toDouble();
            else if (action == '-') term = (right[0] == 'v')?vec[r][i].toDouble()-vec[l][i].toDouble():vec[l][i].toDouble()-right.toDouble();
            vec[l][i] = QString::number(term);
        }
        result = "vec" + QString::number(l);
    }
    return result;
}



