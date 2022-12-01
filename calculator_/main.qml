import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3
import "Claculator.js" as CalcEngine



Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("CALCULATOR ")

    property var i :0
     property var aNumber :0
    property var num: 0
    property var num1: 0
    property var text1: 0




    Grid {
        id: grid
        x: 91
        y: 116
        width: 320
        height: 241

        Label {
            id: label
            y: 30
            width: 300
            height: 45
            font.pointSize: 20
            font.bold: true
        }

        Button {
            id: button
            x: 0
            y: 200
            width: 50
            height: 25
            text: "0"
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text

           label.text=label.text+i
                 aNumber= label.text
                print(aNumber)
              // label.text=CalcEngine.result()
                //label.text=CalcEngine.oeratoradd(text)
            }

        }

        Button {
            id: button1
            x: 50
            y: 200
            width: 50
            height: 25
            text: "1"
            font.pointSize: 15
            font.bold: true

            onClicked:{
            i=text

           label.text=label.text+i
                 aNumber= label.text
                 print(aNumber)
                // label.text=CalcEngine.oeratoradd(text)
              //  label.text//=Code.random()
                //label.text=CalcEngine.result(text)
            }

        }

        Button {
            id: button2
            x: 100
            y: 200
            width: 50
            height: 25
            text: qsTr("2")
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text
            label.text=label.text+i
              //  label.text=CalcEngine.oeratoradd(text)
            }
        }

        Button {
            id: button3
            x: 0
            y: 250
            width: 50
            height: 25
            text: qsTr("3")
            font.bold: true
            font.pointSize: 15
            onClicked:{
            i=text
            label.text=label.text+i
            }
        }

        Button {
            id: button4
            x: 100
            y: 250
            width: 50
            height: 25
            text: qsTr("5")
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text
            label.text=label.text+i
            }
        }

        Button {
            id: button5
            x: 0
            y: 300
            width: 50
            height: 25
            text: qsTr("6")
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text
            label.text=label.text+i
            }
        }

        Button {
            id: button6
            x: 50
            y: 300
            width: 50
            height: 25
            text: qsTr("7")
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text
            label.text=label.text+i
            }
        }

        Button {
            id: button7
            x: 50
            y: 250
            width: 50
            height: 25
            text: qsTr("4")
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text
            label.text=label.text+i

                // button7=label.text
//                print(button7)
              //  CalcEngine.multiplication(i)

                   }


        }

        Button {
            id: button8
            x: 100
            y: 300
            width: 50
            height: 25
            text: qsTr("8")
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text
            label.text=label.text+i
               //  CalcEngine.multiplication(text,button8)
               // CalcEngine.multiplication(text)
            }
        }

        Button {
            id: button9
            x: 0
            y: 350
            width: 50
            height: 25
            text: qsTr("9")
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text
            label.text=label.text+i
            }
        }

        Button {
            id: button10_point
            x: 50
            y: 350
            width: 50
            height: 25
            text: qsTr(".")
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text
            label.text=label.text+i
            }
        }

        Button {
            id: button11_equal
            x: 150
            y: 350
            width: 50
            height: 25
            text: qsTr("=")
            font.pointSize: 15
            font.bold: true
            onClicked:{
                //label.text=CalcEngine.oeratoradd(i)
               // i=0
          //  i=text
           // label.text=label.text+i
            text=text-1
               // onClicked: label.text=CalcEngine.euelbutton()
                 // onClicked: label.text=CalcEngine.euelbutton()
              // label.text=function colc()
                // CalcEngine.oeratoradd(aNumber)
               // sorage=0
             // delete  aNumber
              //  CalcEngine.result(text)
              //   label.text=CalcEngine.result()

                CalcEngine.sub(text)

                 label.text=CalcEngine.subres()
            }


        }

        Button {
            id: button12_addtion
            x: 150
            y: 207
            width: 50
            height: 25
            text: "+"
            font.pointSize: 15
            font.bold: true
            onClicked:{
                //j=text

              // label.text=CalcEngine.oeratoradd(text)

            i=text
           label.text=label.text+i
              //  label.text=text
               // i=0
                CalcEngine.oeratoradd(aNumber)

               delete aNumber
               //  label.text=CalcEngine.result(text)
               // label.text=CalcEngine.euelbutton()

            }


        }

        Button {
            id: button13_minus
            x: 150
            y: 250
            width: 50
            height: 25

            text: qsTr("-")
            font.bold: true
            font.pointSize: 15
            onClicked:{
              //  CalcEngine.check("-",text)
                CalcEngine.sub(text-1)
           i=text
           label.text=label.text+i
              text=0
            }
        }

        Button {
            id: button14_multi
            x: 150
            y: 300
            width: 50
            height: 25
            text: qsTr("*")
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text
            label.text=label.text+i
                  //    CalcEngine.multiplication(text)
            }
        }

        Button {
            id: button15_division
            x: 100
            y: 350
            width: 50
            height: 25
            text: qsTr("/")
            font.pointSize: 15
            font.bold: true
            onClicked:{
            i=text
            label.text=label.text+i
            }
        }

        Button {
            id: button16_clear
            x: 0
            y: 150
            width: 50
            height: 25
            text: qsTr("C")
            font.pointSize: 15
            font.bold: true
          //  text: "Cancel"
                   onClicked: {
                    label.text=0
                   }
        }

   // onPressed:label(text)
       // onClicked:label.text



    }

//Connections{
//target: button11_equal
//onVlaueModefied:colc()
//}

////onClicked: label.text//=Code.random()

//function colc()
//{
//var num=button.value+button1.value
//    label.text=num


//}
//    function sub(){
//    var numm=button9.value - button8.value
//        print(numm)
//}



//    Connections{
//    target: button13_minus
//    onVlaueModefied:sub()


//   }




//print:(text);






}
