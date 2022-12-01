import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid{
    anchors.centerIn: parent
    spacing: 5
//    rows: 1
//    columns: 1
    rows: 3
    columns: 2
   MyShap{color: "red"}

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
