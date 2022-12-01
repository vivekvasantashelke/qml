
import QtQuick 2.12


Item {
    id: root
    property color color: "gray"

    property string text: "titel"

        width: 100
        height: 100
    Rectangle
    {
       // id : mychape1
        color: root.color
        anchors.fill: parent

//width: 50
//height: 50
        Text {
          //  id: name
            text: root.text
            anchors.centerIn: parent
        }


            MouseArea
            {
                anchors.fill: parent
                drag.target:root. parent
                onPressed:  root.z++
            }


    }

}

