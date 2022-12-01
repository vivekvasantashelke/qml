import QtQuick 2.12
import QtQuick.Window 2.12


//x y z



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
        y:100
        z:4
    }



    Rectangle
    {
    color: "red"
    width: 200
    height: 200

    x:50
    y:50
    opacity: 0.5
    z:0
    }

    Rectangle
    {
    color: "blue"
    width: 200
    height: 200

    x:150
    y:150
    opacity: 0.5
    z:1
    }


}
