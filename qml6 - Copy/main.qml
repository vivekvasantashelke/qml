import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: name
        source: "http://t3.gstatic.com/images?q=tbn:ANd9GcRjgn6tClrXNm0N6eEgA9wiIk2C9ZgHzcNWJIIfsjrJTUMFcjoa"

        width: 150
        height: 150
        opacity: 0.25
        anchors.centerIn: parent

    }

    TextInput
    {
    id:myinput
    text:"hello world"
    anchors.centerIn: parent
    }


    Text {
        id: myText
        text: myinput.text
        font.pixelSize: 25
    }


}
