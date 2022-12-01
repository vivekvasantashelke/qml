import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{

    color: "red"
    anchors.centerIn: parent
    width: 300
    height: 400

   // clip: true
clip:false
    Flow
    {
    anchors.centerIn: parent
    //Flow.LeftRight is Default
    //flow: is toptobuttom are positioned

    flow: Flow.LeftToRight
spacing: 5
    MyShap{color: "green"}
    MyShap{color: "black"}
    MyShap{color: "gray"}
    MyShap{color: "yellow"}
    MyShap{color: "white"}
    MyShap{color: "pink"}
     MyShap{color: "orange"}
     MyShap{color: "brown"}
    }

    }

}
