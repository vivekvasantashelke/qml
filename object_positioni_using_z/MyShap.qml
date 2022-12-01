import QtQuick 2.12

Rectangle {
    color: "green"

    width: 100
    height: 100

    MouseArea
    {
    anchors.fill: parent
    drag.target: parent

    onClicked: parent.z++
    }

}
