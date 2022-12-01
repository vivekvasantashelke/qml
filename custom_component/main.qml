import QtQuick 2.12
import QtQuick.Window 2.12



Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


//    Mybutton
//    {}

    property var middle: (height/2)-50

    Mybutton
    {
        id:button1
        x:100
        y:middle
        color: "red"
        colorClicked: "orange"
        titel: "button 1"
    }


    Mybutton
    {
        id:button2
        x:(parent.width/2)-(width/2)
        y:middle
        color: "blue"
        colorClicked: "orange"
        titel: "button 2"
    }

    Mybutton
    {
        id:button3
        x:parent.width -200
        y:middle
        color: "green"
        colorClicked: "orange"
        titel: "button 3<br>Testing"
    }

    Mybutton
    {
        id:button4
    x:(parent.width/2)-(width/2)
        y:middle +120
        width: 200
        height: 30
        color: "lightblue"
        colorClicked: "orange"
        titel: "<b>Super</b><i>Long</i><u> Button</u>"
    }




}
