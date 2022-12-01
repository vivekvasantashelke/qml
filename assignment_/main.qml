import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

import "Code.js" as Code

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        width: 132
        height: 126
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: "0"
            font.pointSize: 20
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: button
            width: 70
            height: 30
            text: qsTr("click")
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: 15
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: label.text=Code.random()


        }
    }
}
