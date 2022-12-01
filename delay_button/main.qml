


import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        id: row
        x: 0
        y: 0
        width: 348
        height: 83
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 120
        anchors.topMargin: 156

        DelayButton {
            id: delayButton
            width: 120
            height: 40
            text: qsTr("deleting Everting ")
           anchors.verticalCenter: parent.verticalCenter
            delay: 3000


        }

        Label {
            id: label
            text: qsTr("status")
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 20
            font.bold: true


        }
    }

    Connections{

    target: delayButton
    onActivated:{label.text="done";target.text="Boooom"}
    }
//    Connections{
//        target: delayButton
//       onProgressChanged:label.text=Progress
//   }
}
