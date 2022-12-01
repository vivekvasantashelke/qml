import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Windows 6.0
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    id: window
    visible: true
    title: qsTr("Hello World")

    Grid {
        id: grid
        width: 272
        height: 38
        anchors.verticalCenter: parent.verticalCenter
        anchors.top: parent.top
        anchors.topMargin: 205
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 28
        columns: 2

        SpinBox {
            id: spinBox
            width: 212
            height: 61
            font.pointSize: 25
            font.bold: true

            Connections {
                target: spinBox
                onValueChanged: label.text=target.value
            }
        }

        Label {
            id: label
            text: spinBox.value
            font.pointSize: 27
            font.bold: true
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1}
}
##^##*/
