import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var firstname: "First"
    property var lastname: "last"
    property var gnder: 0
    property var age: 18

    Column {
        id: column
        anchors.fill: parent
        anchors.rightMargin: 160
        anchors.bottomMargin: 121
        anchors.leftMargin: 105
        anchors.topMargin: 127
        Popup{
            id:popup
            anchors.centerIn: parent
            modal: true
            focus: true
            closePolicy: Popup.CloseOnEscape|Popup.CloseOnPressOutside

            Grid{
                anchors.fill: parent
                spacing: 10
                columns: 2

                Label{text: "First name"}
                Label{text: firstname}

                Label{text: "Last name"}
                Label{text: lastname}

                Label{text: " gender"}
                Label{text: gnder}

                Label{text: "age"}
                Label{text: age}
            }


        }



        Grid {
            id: grid
            anchors.fill: parent

            Label {
                id: label
                text: qsTr("first name")
                font.pointSize: 15
                font.bold: true
            }

            Label {
                id: label1
                x: 0
                y: 60
                height: 20
                text: qsTr("last name")
                font.pointSize: 15
                font.bold: true
            }

            Label {
                id: label2
                x: 0
                y: 100
                height: 20
                text: qsTr("Gender")
                font.bold: true
                font.pointSize: 15
            }

            ComboBox {
                id: cmbgender
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                model: ["male","Feamel"]
                currentIndex: gnder

            }

            Label {
                id: label3
                y: 135
                text: qsTr("Age")
                font.bold: true
                font.pointSize: 15
            }

            SpinBox {
                id: sbage
                y: 140
                width: 50
                height: 25
                anchors.left: parent.left
                value: age
                anchors.leftMargin: 150
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button
                y: 180
                width: 80
                height: 35
                text: qsTr("click")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 25
                font.bold: true

                onClicked: {
                    firstname=txtfirstname.text
                    lastname=txtlastname.text
                    gnder=cmbgender.currentIndex
                    age=sbage.value
                    popup.open()
                }

            }
        }
    }

    TextField {
        id: txtfirstname
        text: firstname
        x: 239
        y: 127
        width: 159
        height: 38
        placeholderText: qsTr("")
    }

    TextField {
        id: txtlastname

        x: 239
        y: 171
        width: 159
        height: 36
        text: "last"
        placeholderText: qsTr("")
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:19}D{i:1}
}
##^##*/
