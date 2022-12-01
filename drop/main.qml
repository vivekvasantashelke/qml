import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        id: box

        Rectangle{
        id:root
        width: 300
        height: 300
        x:0
        y:(parent-height/2)-(height/2)

        DropArea{

        x:0
        y:10
onDropped:
        {

//        drag.x("a")
Drop.box("a")
            Drop.dropped("c")
            dropped("d")
        }

        }


        }
    }

}
