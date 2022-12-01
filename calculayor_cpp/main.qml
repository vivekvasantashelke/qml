import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string i;
    property string a;
    property string b;
    property string c;
    Column {
        id: column
        anchors.fill: parent
        anchors.rightMargin: 303
        anchors.bottomMargin: 8
        anchors.leftMargin: 181
        anchors.topMargin: 9

        Label {
            id: label
            y: 0
            width: 150
            height: 29
            text: ""
        }

        Button {
            id: button
            y: 50
            width: 50
            height: 25
            text: "1"

            onClicked: {
                //Call a slot
                i=text
              label.text=label.text+i

            }


        }

        Button {
            id: button1
            x: 50
            y: 50
            width: 50
            height: 25
            text: "2"
            onClicked: {
                //Call a slot
                i=text
              label.text=label.text+i

            }

        }

        Button {
            id: button2
            x: 100
            y: 50
            width: 50
            height: 25
            text: "3"
            onClicked: {
                //Call a slot
                i=text
              label.text=label.text+i

            }
        }

        Button {
            id: button3
            y: 100
            width: 50
            height: 25
            text: "4"
            onClicked: {
                //Call a slot
                i=text
              label.text=label.text+i

            }
        }

        Button {
            id: button4
            x: 50
            y: 100
            width: 50
            height: 25
            text: "5"
            onClicked: {
                //Call a slot
                i=text
              label.text=label.text+i

            }
        }

        Button {
            id: button5
            x: 100
            y: 100
            width: 50
            height: 25
            text: "6"
            onClicked: {
                //Call a slot
                i=text
              label.text=label.text+i

            }
        }

        Button {
            id: button6
            y: 150
            width: 50
            height: 25
            text: "7"
            onClicked: {
                //Call a slot
                i=text
              label.text=label.text+i

            }
        }

        Button {
            id: button7
            x: 50
            y: 150
            width: 50
            height: 25
            text: "8"
            onClicked: {
                //Call a slot
                i=text
              label.text=label.text+i

            }
        }

        Button {
            id: button8
            x: 100
            y: 150
            width: 50
            height: 25
            text: "9"
            onClicked: {
                //Call a slot
                i=text
              label.text=label.text+i

            }
        }

        Button {
            id: button9
            y: 200
            width: 50
            height: 25
            text: qsTr("+")

//            testing.storege1(text)
//            //print(text)
//            //Can not call a non-slot - must be a property
//            var num = testing.number()
//
            // t.text = (Number(a)+Number(b)).toString()
            onClicked: {
            a = label.text
               //  a.toString()
           // label.text = ""
            b = label.text
              //   b.toString()
                Test.addition(a,b);

          //  c = a + b

            }
        }

        Button {
            id: button10
            x: 50
            y: 200
            width: 50
            height: 25
            text: "0"
            onClicked: {
                //Call a slot
                i=text
              label.text=label.text+i

            }
        }

        Button {
            id: button11
            x: 100
            y: 200
            width: 50
            height: 25
            text: "-"

            onClicked: {
            a = label.text
                a.toString()
               testing.storege1()

//print(a)
            label.text = ""
            b = label.text
                b.toString()
//print(b)

            c = a - b
//print(c)

            }
        }



        Button {
            id: button12
            y: 250
            width: 50
            height: 25
            text: "/"

            onClicked: {
            a = label.text
            a.toString()
            label.text = ""
         //   b = label.text
          //  b.toString()
           // c = a / b
              //  var num = testing.number(a)

             //   print(a)

                b=pass()
                 c = a / b
              //  print(c)
            }

        }

        Button {
            id: button13
            x: 50
            y: 250
            width: 50
            height: 25
            text: "="

            onClicked: {
               // b = label.text
               // b.toString()
                print(a)
                print(b)
label.text=Test.addition(button15.text,button2.text);
               // function pass(b){}
               //  label.text=c
                }

        }

        Button {
            id: button14
            x: 100
            y: 250
            width: 50
            height: 25
            text: "*"
            onClicked: {
            a = label.text
            a.toString()
            label.text = ""

              b = label.text
            b.toString()

            c = a * b

            }


        }

        Button {
            id: button15
            x: 50
            y: 300
            width: 50
            height: 25
            text: "."
        }

        Button {
            id: button16
            y: 300
            width: 50
            height: 25
            text: "C"
            onClicked: {
                //Call a slot
               label.text=""

            }
        }




    }
}


