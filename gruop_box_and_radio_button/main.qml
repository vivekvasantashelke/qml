import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property string strfood: ""
     property string strdrink: ""
    Popup{
    id:popup
    anchors.centerIn: parent
    width: 200
    height: 150
    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

    Column{
    anchors.fill: parent
    spacing: 25
    Label{
    id:lbDetails
    text:strfood+"with"+strdrink
     }

    Button{
    id:closeButton
    text:"close"
    onClicked: popup.close()
    }

    }

    }



    Row {
        id: row
        x: 96
        y: 87
        width: 457
        height: 216
        spacing: 25

        GroupBox {
            id: groupBox
            width: 200
            height: 200
            title: qsTr("food")

            Column {
                id: colfood
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 28
                anchors.topMargin: 51
                anchors.leftMargin: 17
                anchors.bottomMargin: 64

                RadioButton {
                    id: radioButton
                    width: 100
                    height: 25
                    text: qsTr("fish")
                    spacing: 20
                }

                RadioButton {
                    id: radioButton1
                    width: 100
                    height: 25
                    text: qsTr("shark")
                    spacing: 20
                }

                RadioButton {
                    id: radioButton2
                    width: 100
                    text: qsTr("vegan")
                }
            }
        }
    }

    GroupBox {
        id: groupBox1
        x: 353
        y: 103
        width: 164
        height: 165
        anchors.right: row.right
        anchors.bottom: row.bottom
        anchors.rightMargin: 36
        anchors.bottomMargin: 35
        title: qsTr("drink")


        Column {
            id: coldrink
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 28
            anchors.topMargin: 51
            anchors.leftMargin: 17
            anchors.bottomMargin: 64


        RadioButton {
            id: radioButton3
            x: 1
            y: 8
            width: 93
            height: 28
            text: qsTr("coak")
        }

        RadioButton {
            id: radioButton5
            x: 18
            y: 112
            width: 93
            height: 28
            text: qsTr("sprite")
            anchors.left: radioButton3.left
            anchors.right: radioButton3.right
            anchors.top: radioButton4.bottom
            anchors.topMargin: 6
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        RadioButton {
            id: radioButton4
            x: 8
            y: 78
            width: 93
            height: 28
            text: qsTr("thusab")
            anchors.left: radioButton3.left
            anchors.right: parent.right
            anchors.top: radioButton3.bottom
            anchors.topMargin: 6
            anchors.leftMargin: 0
            anchors.rightMargin: 30
        }
        }
    }

    Button {
        id: button
        x: 280
        y: 379
        width: 117
        height: 50
        text: qsTr("click")
    }

    Connections{
    target: button
    onClicked:{
    for(var i=0;i<colfood.children.lenght;i++)
    {
     var rdo=coldrink.children[i]
        if(rdo.checked) strdrink=rdo.text

    }

    popup.open()
    }

    }

}
