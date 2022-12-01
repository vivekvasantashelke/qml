import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

//This is the root context

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Connections {
        target: testing //our C++ object on the root context
        onNotice: {
            console.log("Slot called from C++")
            lblStatus.text = data //get this from the signal
        }
    }

    Column {
        id: column
        width: 228
        height: 159
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 25

        Label {
            id: lblTitle
            text: "Connecting to Signals"
            font.pointSize: 10
        }

        Label {
            id: lblStatus
            text: "Status"
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: 25
            font.bold: true
        }

        Row {
            id: row
            anchors.fill: parent
            spacing: 25

            Button {
                id: btnStart
                x: 80
                y: 120
                width: 40
                height: 20
                text: qsTr("Start")

                //Call a slot
                onClicked: testing.start()

            }

            Button {
                id: btnStop
                x: 140
                y: 120
                width: 40
                height: 20
                text: qsTr("Stop")

                //Call a slot
                onClicked: testing.stop()
            }
        }
    }
}
