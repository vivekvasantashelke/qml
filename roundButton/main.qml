import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
  //  id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id:root

    property var value: 0


    Row {
        id: row
        x: 0
        y: 0
        width: 255
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 235
        anchors.topMargin: 230

        Label {
            id: label
            width: 60
            height: 43
            text:  root.value
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: 26
            font.bold: true
        }

        RoundButton {
            id: roundButton
            text: "+"
            anchors.bottom: label.bottom
            font.pointSize: 15
            font.bold: true
            onClicked: value++
        }
    }

    RoundButton {
        id: roundButton1
        x: 304
        y: 256
        width: 32
        height: 41
        text: "-"
        anchors.verticalCenter: row.verticalCenter
        font.pointSize: 15
        font.bold: true
        anchors.verticalCenterOffset: 4
        anchors.horizontalCenterOffset: 38
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: value--
    }



}
