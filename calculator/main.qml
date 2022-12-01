import QtQuick 2.15
import QtQuick 2.12
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

import "Calculator.js" as CalcEngine

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Claculator..")

    ColumnLayout{


        anchors.fill: parent
        anchors.margins: 5

        TextField{
        Layout.fillWidth: true
        font.pixelSize: 30
        horizontalAlignment:TextInput.AlignRight
        transformOrigin: Item.Center

        background:Rectangle{

        color: "lightgrey"
        radius: 5
        }
        readOnly:true

        }




    GridLayout{

    Layout.fillHeight: true
    Layout.fillWidth: true
columns: 4

    Repeater{
    model: ["C","+/-","%","/","7","8","9","*","4","5","6","-","1","2","3","+","0",".","="]
    Button{
    implicitHeight: 50
    implicitWidth: 100
    Layout.fillHeight: true
    Layout.fillWidth: true

    contentItem: Text {
        //id: name
        text: modelData
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter


    }



  //  onClicked: CalcEngine.operatorPressed(modelData)

  //  onClicked:TextField.text= CalcEngine.claculation(modelData)
    onClicked:TextField.text=modelData


    }

    }

    }

}


}


//        DigitButton {text: "7"} DigitButton {text: "8" } DigitButton { text: "9"} DigitButton { text: "4"}  DigitButton { text: "5" }
//        DigitButton { text: "6" }DigitButton {  text: "1"} DigitButton { text: "2" } DigitButton { text: "3" } DigitButton { text: "0" }
//        DigitButton {  text: "."
// dimmable: true
//        }

//        DigitButton { text: " "  }
// OperatorButton {   text: "±"  }  OperatorButton {  text: "−" }  OperatorButton {  text: "+"}OperatorButton {  text: "√"  }  OperatorButton {    text: "÷" } OperatorButton {    text: "×" } OperatorButton { text: "C" }  OperatorButton {  text: " " }  OperatorButton {   text: "=" }

//           Component.onCompleted: updateDimmed()
//       }


//    function updateDimmed(){
//            for (let i = 0; i < children.length; i++){
//                children[i].dimmed = window.isButtonDisabled(children[i].text)
//            }
//        }


//    component DigitButton: CalculatorButton {
//           onPressed: function() {
//               window.digitPressed(text)
//               updateDimmed()
//           }
//       }

//       component OperatorButton: CalculatorButton {
//           onPressed: function() {
//               window.operatorPressed(text)
//               updateDimmed()
//           }
//           textColor: "#6da43d"
//           dimmable: true
//       }



//    }

//    }

//    }

//}


//}
