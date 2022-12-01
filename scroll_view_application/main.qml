import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Component{
    id:delegate
    Item {
        id: item
        width: 200
        height: 50
        Column{
        anchors.fill: parent
        spacing:5

        Label{

        text:name
        font.bold: true
        }
        Label{

        text:number

        }
    }

    }}

    ListModel{
    id:model
    ListElement{
    name:"bill msit"
    number:"123 456"
    }
    ListElement{
    name:"bill msit"
    number:"123 456"
    }
    ListElement{
    name:"bill msit"
    number:"123 456"
    }
    ListElement{
    name:"bill msit"
    number:"123 456"
    }

    }



    ScrollView{
        anchors.centerIn: parent

        ListView{
        width:400// parent.width
        model: model
        delegate:delegate /*ItemDelegate{
        text: "Item"+(index+1)
        width: parent.width*/
       //}
        }

    }


}
