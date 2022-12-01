import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var locked: "529"
    property string status: "locked"

    Popup{
    id:statuspoppup
    closePolicy: Popup.CloseOnEscape| Popup.CloseOnPressOutside
    width: 200
    height: 300
    modal: true
    focus: true
    anchors.centerIn: parent

    Label{
    id:statusLabel
    anchors.centerIn: parent
    text: status
    font.bold: true
    }

    }


    Column {
        id: column
        width: 200
        height: 400
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("000")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 25
            font.bold: true
        }

        Row {
            id: row
            width: 190
            height: 210

            Tumbler {
                id: tumbler
                model: 10
                onCurrentIndexChanged: label.text=tumbler.currentIndex+" "+tumbler1.currentIndex+" " +tumbler2.currentIndex+" "

            }

            Tumbler {
                id: tumbler1
                model: 10
                onCurrentIndexChanged: label.text=tumbler.currentIndex+" "+tumbler1.currentIndex+"" +tumbler2.currentIndex+" "

            }

            Tumbler {
                id: tumbler2
                model: 10
                onCurrentIndexChanged: label.text=tumbler.currentIndex+" "+tumbler1.currentIndex +tumbler2.currentIndex+" "

            }

        }
    }

    Button {
        id: button
        x: 260
        y: 388
        width: 96
        height: 30
        text: qsTr("click")
        font.pointSize: 25
        font.bold: true

onClicked: {
var tempcode=tumbler.currentIndex+""+tumbler1.currentIndex +tumbler2.currentIndex+""
if(tempcode===locked) status="Unlocked"
statuspoppup.open()

}

    }




}
