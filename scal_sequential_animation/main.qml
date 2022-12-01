import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id:myShape
        color: "red"
        width: 200
        height: 200
        anchors.centerIn: parent
        clip: true
        Text {
            id: title
            text: qsTr("Hellow")
            font.bold: true
            font.pointSize: 66
            color: "black"
            rotation: -45
            anchors.centerIn: parent
        }

        SequentialAnimation{
        id:animation
        running: true
        loops:Animation.Infinite

        ScaleAnimator{
        id:anishrink
        target: myShape
        from: 1
        to:0.5
        duration: 200
        running: true
        }

        ScaleAnimator{
        id:oniGrow
        target: myShape
        from: 0.5
        to:1
        duration: 200
        running: true
        }


        }

    }


}
