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
        x: 204
        y: 40
        width: 200
        height: 400
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -8

        CheckBox {
            id: checkBox
            width: 30
            text: qsTr("normal")
            font.letterSpacing: 0.7
            font.wordSpacing: 0.6
            spacing: 5
            icon.width: 6
            icon.height: 8
            checkState: Qt.Unchecked
        }

        CheckBox {
            id: checkBox1
            width: 30
            text: qsTr("not checkable")
        }

        CheckBox {
            id: checkBox2
            width: 30
            text: qsTr("tristate")
        }

        CheckBox {
            id: checkBox3
            width: 30
            text: qsTr("exculisive")
        }

        CheckBox {
            id: checkBox4
            width: 30
            text: qsTr("repeat")
        }

        Button {
            id: button
            width: 100
            height: 30
            text: qsTr("reset")
        }
    }

    Column {
        id: column1
        x: 410
        y: 32
        width: parent.width-x
        height: 400
        anchors.verticalCenter: column.verticalCenter
        anchors.left: column.right
        anchors.right: parent.right
        anchors.top: column.top
        anchors.bottom: column.bottom
        anchors.rightMargin: -39
        anchors.verticalCenterOffset: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 6

        Label {
            id: label
            text: qsTr("status here")
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: 20
            font.bold: true
            styleColor: "#901f1f"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Connections
        {
            target: button
            onClicked:{
            checkBox.checkState=Qt.Unchecked
                  checkBox1.checkState=Qt.Unchecked
                  checkBox2.checkState=Qt.Unchecked
                  checkBox3.checkState=Qt.Unchecked
                  checkBox4.checkState=Qt.Unchecked

            }
        }
    }

    Connections{
    target: checkBox
    onClicked:label.text="checkbox ="+target.checkState
    }
    Connections{
    target: checkBox1
    onClicked:label.text="checkbox ="+target.checkState
    }
    Connections{
    target: checkBox2
    onClicked:label.text="checkbox ="+target.checkState
    }
    Connections{
    target: checkBox3
    onClicked:label.text="checkbox ="+target.checkState
    }
    Connections{
    target: checkBox4
    onClicked:label.text="checkbox ="+target.checkState
    }

}


