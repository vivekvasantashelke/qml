import QtQuick 2.12
import QtQuick.Window 2.12


// parent and children relationship

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: image
        source: "http://t3.gstatic.com/images?q=tbn:ANd9GcRjgn6tClrXNm0N6eEgA9wiIk2C9ZgHzcNWJIIfsjrJTUMFcjoa"


        width: 150
        height: 100
        x:100
        y:10
    }

    Rectangle
    {
        color: "red"
        x:-25
        y:-25
    width: 100
    height: 50
    opacity: 0.5
    z:0
    }

    Rectangle
    {
        color: "blue"
        x:parent.width-width
        y:parent.height-height
    width: 50
    height: 50
    opacity: 0.5
    z:0
    }


}
