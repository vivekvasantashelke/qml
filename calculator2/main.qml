import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick 6.2
//import "content" 1.0

import "Calculator.js" as CalcEngine

Window {

    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")



    Item {
         id: pad
         width: 180
         NumberPad { id: numPad; y: 10; anchors.horizontalCenter: pad.horizontalCenter }
     }

    Grid {
        columns: 3
        columnSpacing: 32
        rowSpacing: 16

        function updateDimmed(){
            for (let i = 0; i < children.length; i++){
                children[i].dimmed = window.isButtonDisabled(children[i].text)
            }
        }

        component DigitButton: CalculatorButton {
            onPressed: function() {
                window.digitPressed(text)
                updateDimmed()
            }
        }

        component OperatorButton: CalculatorButton {
            onPressed: function() {
                window.operatorPressed(text)
                updateDimmed()
            }
            textColor: "#6da43d"
            dimmable: true
        }

        DigitButton {
            text: "7"
        }
        DigitButton {
            text: "8"
        }
        DigitButton {
            text: "9"
        }
        DigitButton {
            text: "4"
        }
        DigitButton {
            text: "5"
        }
        DigitButton {
            text: "6"
        }
        DigitButton {
            text: "1"
        }
        DigitButton {
            text: "2"
        }
        DigitButton {
            text: "3"
        }
        DigitButton {
            text: "0"
        }
        DigitButton {
            text: "."
            dimmable: true
        }
        DigitButton {
            text: " "
        }
        OperatorButton {
            text: "±"
        }
        OperatorButton {
            text: "−"
        }
        OperatorButton {
            text: "+"
        }
        OperatorButton {
            text: "√"
        }
        OperatorButton {
            text: "÷"
        }
        OperatorButton {
            text: "×"
        }
        OperatorButton {
            text: "C"
        }
        OperatorButton {
            text: " "
        }
        OperatorButton {
            text: "="
        }

        Component.onCompleted: updateDimmed()
    }



    function updateDimmed(){
           for (let i = 0; i < children.length; i++){
               children[i].dimmed = window.isButtonDisabled(children[i].text)
           }
       }

       component DigitButton: CalculatorButton {
           onPressed: function() {
               window.digitPressed(text)
               updateDimmed()
           }
       }

       component OperatorButton: CalculatorButton {
           onPressed: function() {
               window.operatorPressed(text)
               updateDimmed()
           }
           textColor: "#6da43d"
           dimmable: true
       }
















}
