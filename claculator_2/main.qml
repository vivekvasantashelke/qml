
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("CALCULATOR")
    property int i;
    property int a;
    property int b;
    property int c;
     property int check;
    property int check1;
    property int check2;
    property int check3;


    Grid {
        id:grid
        x: 126
        y: 68
        width: 403
        height: 340
        spacing:10
        rows: 4
        columns: 4

    }

    Label {
        id: label
        x: 124
        y: 77
        width: 405
        height: 76
        text: qsTr("")
        font.bold: true
        font.pointSize: 25


    }

    Button {
        id: button
        x: 124
        y: 166
        width: 75
        height: 56
        text: qsTr("7")
        font.pointSize: 20
        font.bold: true
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button1
        x: 205
        y: 166
        width: 75
        height: 56
        text: qsTr("8")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button2
        x: 286
        y: 166
        width: 75
        height: 56
        text: qsTr("9")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button3
        x: 367
        y: 166
        width: 75
        height: 56
        text: qsTr("*")
        font.bold: true
        font.pointSize: 20
        onClicked: {
        a = label.text
        testing.multiplication(a)
        label.text = ""
             check1=1
        }
    }

    Button {
        id: button4
        x: 124
        y: 228
        width: 75
        height: 56
        text: qsTr("4")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button5
        x: 206
        y: 228
        width: 74
        height: 56
        text: qsTr("5")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button6
        x: 286
        y: 228
        width: 75
        height: 56
        text: qsTr("6")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button7
        x: 366
        y: 228
        width: 76
        height: 56
        text: qsTr("+")
        font.bold: true
        font.pointSize: 20
        onClicked: {
        a = label.text
        testing.addition_(a)
        label.text = ""
            flags=1
            check=1
        }
    }

    Button {
        id: button8
        x: 126
        y: 290
        width: 73
        height: 56
        text: qsTr("1")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button9
        x: 205
        y: 290
        width: 75
        height: 56
        text: qsTr("2")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button10
        x: 286
        y: 290
        width: 75
        height: 56
        text: qsTr("3")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button11
        x: 367
        y: 290
        width: 75
        height: 56
        text: qsTr("-")
        font.bold: true
        font.pointSize: 20
        onClicked: {
        a = label.text
        testing.substraction(a)
        label.text = ""
           check2=1
        }
    }

    Button {
        id: button12
        x: 126
        y: 352
        width: 73
        height: 56
        text: qsTr(".")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button13
        x: 205
        y: 352
        width: 75
        height: 56
        text: qsTr("0")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button14
        x: 286
        y: 352
        width: 75
        height: 56
        text: qsTr("=")
        font.bold: true
        font.pointSize: 20
        onClicked: {
            b=label.text
            if(check==1)
            {
            var num= testing.addition_(b)
            label.text=num
                check=0
            }
            else if(check1==1){
                var num1= testing.multiplication(b)
                label.text=num1
                check1=0
         }
            else if(check2==1){
                var num2= testing.substraction(b)
                label.text=num2
                check2=0
         }

            else
            {
                var num3= testing.division(b)
                label.text=num3

               }
       }
    }

    Button {
        id: button15
        x: 367
        y: 352
        width: 75
        height: 56
        text: qsTr("/")
        font.bold: true
        font.pointSize: 20
        onClicked: {
        a = label.text
        testing.division(a)
        label.text = ""
        }
    }

    Button {
        id: button16
        x: 448
        y: 166
        width: 81
        height: 242
        text: qsTr("C")
        font.bold: true
        font.pointSize: 20

        onClicked: {
            label.text = ""
              testing.distroying()
        }

    }
}
