import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle{
    anchors.fill: parent
    color: "black"
    focus: true

    Rectangle{
    width: 60
    height: 60
    color: "yellow"
    radius: width

    x:rec1.x-5
    y:rec1.y-5


    Behavior on x{SmoothedAnimation{velocity: 150}}
    Behavior on y{SmoothedAnimation{velocity: 100}}
    }


    Rectangle{
    id:rec1
    width: 50
    height: 50
    color: "red"
    radius: width
    x:(parent.width/2)-(width/2)
    y:(parent.height/2)-(height/2)

    }

    Keys.onRightPressed: rec1.x=rec1.x + 100
Keys.onLeftPressed:  rec1.x=rec1.x - 100
Keys.onUpPressed:  rec1.y=rec1.y- 100
Keys.onDownPressed:  rec1.y=rec1.y + 100

    }

}
