import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property color  bgcolor: "#5A6263"
     property color  buttoncolor: "green"
     property color  hovercolor: "blue"
     property color  clickColor: "yellow"
     property var  size: 100

    Rectangle
    {
        id:background
        color: root.bgcolor
        width: 100
        height: parent.height

        Column{
        id:column
        anchors.fill: parent

        HoverButton{
        width: 100
        height: 50
        titel.text: "undo"

        color: root.buttoncolor
        hoverColor: root.hovercolor
        clickColor: root.clickColor
        area.onPressed:image.source="qrc:/images/paste.png"
        }

        HoverButton{
        width: 100
        height: 50
        titel.text: "save"
        color: root.buttoncolor
         hoverColor: root.hovercolor
        clickColor: root.clickColor
        area.onPressed:image.source="qrc:/images/save.png"
        }

        HoverButton{
        width: 100
        height: 50
        titel.text: "saveas"
        color: root.buttoncolor
         hoverColor: root.hovercolor
        clickColor: root.clickColor
        area.onPressed:image.source=":/images/saveas.jpg"
        }

        }

    }


    Rectangle{
    id :rectnagle
    color: root.bgcolor
    x:100
    y:0
    width: parent.width-x
    height: parent.height

    Image {
        id: name
        anchors.margins: 25
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        source: "qrc:/images/8051_book.jpg"
    }


    }


}
