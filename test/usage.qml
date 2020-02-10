import QtQuick 2.12
import QtQuick.Controls 1.4
import com.example.Process 1.0

ApplicationWindow {
    width: 800
    height: 480
    visible: true
    Text {
        width: parent.width
        id: text
        wrapMode: Text.Wrap
    }

    Process {
        id: process
        property bool finish: true

        onReadyRead: {
            console.log("onReadyReadAll")
            text.text = readAll();
        }
        onReadyReadStandardError: {
            console.log("onReadyReadStandardError")
            console.log(readAllStandardError())
        }
        onReadyReadStandardOutput: {
            console.log("onReadyReadStandardOutput")
            console.log(readAllStandardOutput())
        }
        onErrorOccurred: {
            console.log("error occured,error number in Qt:",error)
        }
        onStateChanged: {
            console.log("state", state)
        }
        onStarted: {
            console.log("program started")
        }
        onFinished: {
            finish = true
            text.text = readAll();
            console.log("program finished", exitStatus)
        }

    }

    Timer {
        interval: 1000
        repeat: true
        triggeredOnStart: true
        running: true
        onTriggered: {
            if ( process.finish == true) {
                process.finish = false
                console.log("process start");
                process.start("/bin/bash",["/home/gao/test/test.sh"]);
            }
            console.log("timeup");

        }
    }
}
