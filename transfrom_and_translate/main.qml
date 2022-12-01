import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item{

    id:root
    rotation: 0
    anchors.centerIn: parent
    //anchors.fill: parent
    Rectangle{
    id:yellowrect
    color: "yellow"
    width: 300
    height: 300
    radius: width
    opacity: 0.5
    border.color: "black"
    anchors.centerIn: parent
   // x:0
    transform: Translate{y:-100}


    }

    Rectangle{
    id:bluerect
    color: "blue"
    width: 300
    height: 300
    radius: width
    opacity: 0.5
    border.color: "black"
    anchors.centerIn: parent
   // x:0
    transform: Translate{y:100;x:-100}
    }

    Rectangle{
    id:redrect
    color: "red"
    width: 300
    height: 300
    radius: width
    opacity: 0.5
    border.color: "black"
    anchors.centerIn: parent
  //  x:0
    transform: Translate{y:100;x:100}
    }


    Rectangle{
    id:centerArea
    color: "white"
    width: 40
    height: 40
    radius: width
    opacity: 1
    border.width: 2
    border.color: "black"
    anchors.centerIn: parent

    Rectangle{
    id:centercircle
    color: "gray"
    width: 4
    height: 4
    radius: width
    opacity: 1
    border.width: 2
    border.color: "black"
    anchors.centerIn: parent
    }



    }



RotationAnimator{
target: root
from: 360
to:0
duration: 5000
direction: RotationAnimator.Counterclockwise
loops:Animation.Infinite
running: true

}

    }


}
