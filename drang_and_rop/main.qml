import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    property string theykey: "special key here"

    property color goalon: "green"
     property color goaloff: "red"
     property color ballon: "yellow"
     property color balloff: "blue"


    DropArea{
    id:dropzone
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    width: 300
    Drag.keys: [theykey]
    onDropped: {console.log("dropped")
    goal.color=goalon
    }

    Rectangle{
    id:goal
    anchors.fill: parent
    color: goaloff
    border.color: "black"
    border.width: 5
    }


    }


    Rectangle{
    id:ball
    width: 100
    height: 100
    radius: width
    x:25
    y:(parent.height/2)-(height/2)
    color:balloff
    border.color: "black"
       border.width: 5
    Drag.active: dragArea.drag.active
      Drag.keys: [thekey,a,b,c]
       Text{
       id:title
       anchors.centerIn: parent
       text: Math.round(parent.x)+"x"+Math.round(parent.y)
       }

       MouseArea{
       id:dragArea

       anchors.fill: parent
       drag.target: parent
       onPressed: {parent.color=ballon;goal.color=goaloff}
       onReleased: {parent.color=balloff;parent.Drag.drop()}
       }


    }



}
