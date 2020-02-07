#include "process_plugin.h"
#include "process.h"

#include <qqml.h>

void ProcessPlugin::registerTypes(const char *uri)
{
    // @uri com.example.Process
    qmlRegisterType<Process>(uri, 1, 0, "Process");
}

