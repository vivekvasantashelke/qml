import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string usernames: "vivek"
     property string passwords: "password"
     property string status: "Fialed"

    Popup{
    id:statusPopup
    closePolicy: Popup.CloseOnEscape| Popup.CloseOnPressOutside
    width: 200
    height: 300
    modal: true
    focus: true

    Label{
    id:statusLabel
    anchors.centerIn: parent
    text:status
    font.bold: true

    }

    }

    Column {
        id: column
        x: 138
        y: 97
        width: 394
        height: 287

        Grid {
            id: grid
            x: 10
            y: 20
            width: 388
            height: 150
            spacing: 20
            columns: 2

            Label {
                id: label
                   width: 45
                text: qsTr("UserName")
                font.bold: true
                font.pointSize: 25

                TextField {
                    id: txtusename
                    x: 178
                    y: 6
                    width: 174
                    height: 44
                    text: "                       "
                    font.bold: false
                   // placeholderText: qsTr("Text Field")
                }
            }

            Label {
                id: label1
                width: 45
                text: qsTr("Password")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 0
                font.bold: true
                font.pointSize: 25

                TextField {
                    id: txtpassword
                    x: 173
                    y: 3
                    width: 180
                    height: 41
                    horizontalAlignment: Text.AlignLeft
                    font.bold: false
                    rotation: 0.241
                //    placeholderText: qsTr("Text Field")
                    echoMode: TextInput.Password

                }
            }
        }
    }

    Button {
        id: button
        x: 248
        y: 266
        width: 145
        height: 52
        text: qsTr("Login")

        onClicked: {
        if(usernames===txtusename.text && passwords===txtpassword.text) status="Hello"
        statusPopup.open()
        }

    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
