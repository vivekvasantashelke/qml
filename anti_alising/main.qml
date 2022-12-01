import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Row
    {

        anchors.centerIn: parent
        spacing: 20

        Rectangle{
        width: 200
        height: 200
        border.color: "blue"
        border.width: 20
        radius: width

        Text{
        anchors.centerIn: parent
        text: qsTr("turn on")
        }

        }
        Rectangle{
        width: 200
        height: 200
        border.color: "blue"
        border.width: 20
        radius: width
antialiasing: false
        Text{
        anchors.centerIn: parent
        text: qsTr("turn off")
        }

        }


    }


}
