import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        anchors.fill: parent

        Image {
            id: image
            width: 300
            height: 300
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/images/Cpp_book.jpg"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Switch {
            id: switch1
            width: 200
            height: 50
            text: qsTr("Switch")
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 0

            onToggled: {
            if(checked)
            {
                text="book"
                image.source="qrc:/images/Cpp_book.jpg"
            }
            else
            {
                text="new"
                image.source="qrc:/images/new.jpg"
            }


            }


        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:2}D{i:1}
}
##^##*/
