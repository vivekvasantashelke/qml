import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    BusyIndicator {
        id: busyIndicator
        width: 142
        height: 87
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        rightInset: 0
    }

    Label {
        id: label
        x: 298
        y: 146
        text: qsTr("progress = ")+ busyIndicator.running
    }

    MouseArea {
        id: mouseArea
        x: -197
        y: 322
        width: 100
        height: 100

        anchors.fill: parent
        onClicked: {
        if(busyIndicator.running)
        {
            console.log("Turing off ")
            busyIndicator.running=false
        }
        else
        {
            console.log("Turing on ")
            busyIndicator.running=true
        }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
