import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id:background
    color: "black"
    anchors.fill: parent
    focus: true

    Rectangle{
    id:rec1
    color: "red"
    anchors.centerIn: parent
    width: 100
    height: 100
    }

    Rectangle{
    id:outline
    color: "transparent"
    anchors.centerIn: parent
    width: 100
    height: 100
    border.color: "yellow"
    border.width: 5

    }
    Keys.onUpPressed: rec1.height+=10
     Keys.onRightPressed:  rec1.width+=10
     Keys.onDownPressed:  rec1.height-=10
      Keys.onLeftPressed:  rec1.width-=10
    }
}
