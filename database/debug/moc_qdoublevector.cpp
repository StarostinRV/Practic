/****************************************************************************
** Meta object code from reading C++ file 'qdoublevector.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.1.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../qdoublevector.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'qdoublevector.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.1.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_QDoubleVector_t {
    const uint offsetsAndSize[16];
    char stringdata0[39];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(offsetof(qt_meta_stringdata_QDoubleVector_t, stringdata0) + ofs), len 
static const qt_meta_stringdata_QDoubleVector_t qt_meta_stringdata_QDoubleVector = {
    {
QT_MOC_LITERAL(0, 13), // "QDoubleVector"
QT_MOC_LITERAL(14, 1), // "m"
QT_MOC_LITERAL(16, 0), // ""
QT_MOC_LITERAL(17, 1), // "a"
QT_MOC_LITERAL(19, 1), // "d"
QT_MOC_LITERAL(21, 2), // "mv"
QT_MOC_LITERAL(24, 7), // "double*"
QT_MOC_LITERAL(32, 6) // "getarr"

    },
    "QDoubleVector\0m\0\0a\0d\0mv\0double*\0getarr"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QDoubleVector[] = {

 // content:
       9,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       1,   49, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       1,    1,   38,    2, 0x0a,    0 /* Public */,
       4,    1,   41,    2, 0x0a,    2 /* Public */,
       5,    1,   44,    2, 0x0a,    4 /* Public */,
       7,    0,   47,    2, 0x0a,    6 /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, 0x80000000 | 6,    3,
    0x80000000 | 6,

 // constructors: parameters
    0x80000000 | 2,

 // constructors: name, argc, parameters, tag, flags, initial metatype offsets
       0,    0,   48,    2, 0x0e,    7 /* Public */,

       0        // eod
};

void QDoubleVector::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::CreateInstance) {
        switch (_id) {
        case 0: { QDoubleVector *_r = new QDoubleVector();
            if (_a[0]) *reinterpret_cast<QObject**>(_a[0]) = _r; } break;
        default: break;
        }
    } else if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QDoubleVector *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->m((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->d((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->mv((*reinterpret_cast< double*(*)>(_a[1]))); break;
        case 3: { double* _r = _t->getarr();
            if (_a[0]) *reinterpret_cast< double**>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

const QMetaObject QDoubleVector::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_QDoubleVector.offsetsAndSize,
    qt_meta_data_QDoubleVector,
    qt_static_metacall,
    nullptr,
qt_incomplete_metaTypeArray<qt_meta_stringdata_QDoubleVector_t

, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<int, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<int, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<double *, std::false_type>, QtPrivate::TypeAndForceComplete<double *, std::false_type>


>,
    nullptr
} };


const QMetaObject *QDoubleVector::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QDoubleVector::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_QDoubleVector.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int QDoubleVector::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 4;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
