#ifndef PROCESS_H
#define PROCESS_H
#include <QProcess>
#include <QVariant>

class Process : public QProcess {
    Q_OBJECT
    Q_DISABLE_COPY(Process)

public:
    Process(QObject *parent = nullptr);
    ~Process();
    Q_INVOKABLE void start(const QString &program, const QVariantList &arguments);
    Q_INVOKABLE QByteArray readAll();
};

#endif // PROCESS_H
