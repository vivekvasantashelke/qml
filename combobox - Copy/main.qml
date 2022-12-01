import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        x: 247
        y: 40
        width: 200
        height: 400
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 11
    }

    Label {
        id: label
        x: 259
        y: 65
        width: 104
        height: 23
        color: "#1fe751"
        text: qsTr("food")
        font.pointSize: 20
        font.bold: true

        ComboBox {
            id: comboBox
            x: 0
            y: 56
            width: 90
            height: 62
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 14

            model:['pizza','steak','bugger','samosa']
           // onCurrentTextChanged: label.text=comboBox.currentText

        }

//        ComboBox{
//        id:cmfood
//        model:['pizza','steak','bugger','samosa']
//        }


    }

    Label {
        id: label1
        x: 271
        y: 187
        width: 56
        height: 19
        color: "#1b31ae"
        text: qsTr("pepole")
        font.pointSize: 20

        ComboBox {
            id: comboBox1
            editable: true
            x: 0
            y: 0
            width: 90
            height: 81
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.topMargin: 56

           //model:['a','b','c','d']
            textRole: "text"


currentIndex: 2
            model: ListModel
            {
                id:listmodel
                ListElement{text:"A";age:"23"}
                 ListElement{text:"B";age:"13"}
                  ListElement{text:"C";age:"33"}
                   ListElement{text:"D";age:"21"}
            }

            onCurrentIndexChanged: label1.text=model.get(currentIndex).text+"="+model.get(currentIndex).age
            onAccepted: {
            if(find(editText)==-1)
            {
                model.append({"text":editText,"age":"0"})
                currentIndex=find((editText))
            }
            }
        }



    }


}
