import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Popup{
    id:popup
    anchors.centerIn: parent
    width: 200
    height: 200
    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape  | Popup.CloseOnPressOutside

   Column{
   spacing: 25
   anchors.fill: parent

   Label{
   id:lbbutter
   text: "Butter="+checbutter.checked

   }

   Label{
   id:lbsrup
   text: "checksyrup="+checksyrup.checked

   }

   Label{
   id:lbfurit
   text: "checkfruit="+checkfruit.checked

   }

   Button{
   id:closeButton
   text: "close"
   onClicked: popup.visible=false
   }


   }




    }


    Frame {
        id: frame
        width: 200
        height: 304
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            id: column
            anchors.fill: parent
            spacing: 25
            anchors.rightMargin: -5
            anchors.bottomMargin: -5
            anchors.leftMargin: 5
            anchors.topMargin: 5
            clip: false
        }

        CheckBox {
            id: checbutter
            x: 32
            y: 58
            width: 98
            height: 28
            text: qsTr("Butter")
            anchors.left: checksyrup.left
            anchors.bottom: checksyrup.top
            anchors.bottomMargin: 6
            anchors.leftMargin: 0
        }

        CheckBox {
            id: checksyrup
            x: 26
            y: 137
            width: 85
            height: 28
            text: qsTr("syrup")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: checkBox.left
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: checkfruit.horizontalCenter
            anchors.verticalCenterOffset: -40
            anchors.leftMargin: 0
        }

        CheckBox {
            id: checkfruit
            x: 32
            y: 126
            width: 85
            height: 28
            text: qsTr("fruit")
            anchors.left: checkBox.left
            anchors.right: checkBox1.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        Button {
            id: button1
            x: 32
            y: 170
            width: 77
            height: 25
            text: qsTr("save")
            anchors.left: checbutter.left
            onClicked: popup.visible=true
        }
    }



}
