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
        x: 192
        y: 33
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
               // testing.add0()
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
               // testing.add1()

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
               // testing.add2()

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
               // testing.add3()

            }
        }

        Button {
            id: button4
            y: 200
            width: 50
            height: 25
            text: qsTr("+")

            onClicked: {
                a = label.text
                testing.addition_(a)
                label.text = ""

            }
        }


        Button {
            id: button5
            y: 150
            width: 50
            height: 25
            text: qsTr("=")
            onClicked: {
                b=label.text
                var num= testing.addition_(b)
                label.text=num
            }
        }

        Button {
            id: button6
            y: 50
            width: 50
            height: 25
            text: qsTr("Button")
        }

        Button {
            id: button7
            text: qsTr("Button")
        }

        Button {
            id: button8
            text: qsTr("Button")
        }

        Button {
            id: button9
            text: qsTr("Button")
        }

        Button {
            id: button10
            text: qsTr("Button")
        }



    }

}
