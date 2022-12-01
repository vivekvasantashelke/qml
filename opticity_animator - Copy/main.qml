import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
        color: "black"

        Image {
        id: name
        source: "qrc:/images/ghots.jpg"
        anchors.fill: parent
        opacity:0
    }

    SequentialAnimation
    {
        loops:Animation.Infinite
        running: true
        OpacityAnimator
        {
            target: ghots
            from: 1
            to:0
            duration: 1000
            //running: true

        }
        OpacityAnimator
        {
            target: ghots
            from: 0
            to:1
            duration: 50000
           // running: true
        }
    }


}
