import QtQuick 2.12

Item {
    id:root
    width: 100
    height: 100

    property color color:"#c0c0c0"
 property color colorClicked:"green"
     property string titel:"click me"



    Rectangle{
    id :myRec
    anchors.fill: parent
    color: root.color

    Text {
        id: display
        text: root.titel
        anchors.centerIn: parent
    }

    MouseArea {
    id:mousearea
    anchors.fill: parent

    onPressed: parent.color=root.colorClicked
    onReleased: parent.color=root.color

    }


    }


}
