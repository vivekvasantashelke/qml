import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id:root
        color: area.pressed?"red":"blue"
        width: 100
        height: 100
        x:0
        y:(parent.height/2)-(height/2)

        MouseArea{
        id:area
        anchors.fill: parent

        onClicked:{
            print("pressed")
        var max=root.width - area.root
            box.x=(box.x==0)?max:0

        }
        }

    }
}
