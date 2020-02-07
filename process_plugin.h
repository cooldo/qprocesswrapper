#ifndef PROCESS_PLUGIN_H
#define PROCESS_PLUGIN_H

#include <QQmlExtensionPlugin>

class ProcessPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)

public:
    void registerTypes(const char *uri) override;
};

#endif // PROCESS_PLUGIN_H
