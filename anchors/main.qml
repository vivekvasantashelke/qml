import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    MyShap
    {
    id:shareCentral
    anchors.centerIn: parent


   text:"Center"

   Rectangle
    {
        width: 25
        height: 25
        color: "pink"
   //anchors.centerIn: parent

       // anchors.fill: parent

        anchors.right: parent.right
        anchors.bottom: parent.bottom

   }

   MyShap
   {
       id:shapeTop
    text: "Top"
    color: "green"
    anchors.bottom: shareCentral.top
    anchors.left: shareCentral.left


   }
   MyShap
   {
       id:shapebuttom
    text: "Bottom"
    color: "blue"
    anchors.bottom: shareCentral.bottom
    anchors.left: shareCentral.left


   }

   MyShap
   {
       id:shapeleft
    text: "Left"
    color: "red"
    anchors.bottom: shareCentral.top
    anchors.left: shareCentral.left


   }

   MyShap
   {
       id:shaperigt
    text: "Right"
    color: "yellow"
    anchors.bottom: shareCentral.top
    anchors.left: shareCentral.right


   }



    }

}
