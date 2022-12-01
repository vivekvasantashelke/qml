import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        x: 220
        y: 117
        width: 380
        height: 156
        spacing: 50
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            width: 40
            text: qsTr("Value")
            font.pointSize: 50
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter

            Dial {
                id: dial
                x: 8
                y: 127
                width: 126
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 8
                state: label.text=Math.round(dail.value+100)
                anchors.topMargin: 68
                anchors.bottomMargin: -124

            }
        }
    }
//    Connections{
//        target:dial
//        anMoved:label.text=Math.round(dial.value+100)
//    }


}
