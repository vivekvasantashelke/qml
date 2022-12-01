import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int i;
    property int a;
    property int b;
    property int c;


    Column {
        id: column
        width: 200
        height: 400

        Label {
            id: label
            width: 100
            height: 35


        }

        Button {
            id: button
            y: 50
            width: 50
            height: 25
            text: qsTr("0")
            onClicked: {
            i = text
            label.text =label.text + i

            }
        }

        Button {
            id: button1
            x: 0
            y: 50
            width: 50
            height: 25
            text: qsTr("1")
            onClicked: {
            i = text
            label.text =label.text + i

            }
        }

        Button {
            id: button2
            y: 100
            width: 50
            height: 25
            text: qsTr("2")
            onClicked: {
            i = text
            label.text =label.text + i

            }
        }

        Button {
            id: button3
            y: 150
            width: 50
            height: 25
            text: qsTr("3")
            onClicked: {
            i = text
            label.text =label.text + i

            }
        }

        Button {
            id: button4
            y: 200
            width: 50
            height: 25
            text: qsTr("+")

        }
    }
}
