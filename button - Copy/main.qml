import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Windows 6.0
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "#6d6d6d"
    title: qsTr("Hello World")

    Row {
        id: row
        x: 0
        y: 10
        width: 597
        height: 37
    }

    Button {
        id: button
        x: 101
        y: 14
        width: 92
        height: 28
        text: qsTr("copy")
    }

    Button {
        id: button1
        x: 199
        y: 14
        width: 94
        height: 29
        text: qsTr("open")
    }

    Button {
        id: button2
        x: 299
        y: 14
        width: 78
        height: 29
        text: qsTr("redo")
    }

    Button {
        id: button3
        x: 383
        y: 14
        width: 78
        height: 32
        text: qsTr("About")
    }

    Image {
        id: image
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        source: "About.png"
        anchors.rightMargin: 107
        anchors.topMargin: 79
        anchors.leftMargin: 87
        anchors.bottomMargin: 79
        fillMode: Image.PreserveAspectFit
    }

    Connections{
    target:button
    onClicked:image.source="qrc:/images/copy.png"

    }

    Connections{
    target:button1
    onClicked:image.source="qrc:/images/open.jpg"

    }

    Connections{
    target:button2
    onClicked:image.source="qrc:/images/redo.jpg"

    }
    Connections{
    target:button3
    onClicked:image.source="qrc:/images/About.png"

    }






//    Timeline {
//        id: timeline
//        animations: [
//            TimelineAnimation {
//                id: timelineAnimation
//                duration: 1000
//                loops: 1
//                running: true
//                to: 1000
//                from: 0
//            }
//        ]
//        endFrame: 1000
//        startFrame: 0
//        enabled: true
//    }
}
