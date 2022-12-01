import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

Column
{
    anchors.centerIn: parent

    MyShap{

    color: "red"
    }

    MyShap{

    color: "green"
    }

    MyShap{

    color: "blue"
    }


}


}
