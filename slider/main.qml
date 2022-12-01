import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "#ffffff"
    title: qsTr("Hello World")

    Grid {
        id: grid
        x: 134
        y: 189
        width: 362
        height: 89
    }

    Slider {
        id: slider
        x: 153
        y: 231
        width: 334
        height: 27
        anchors.horizontalCenter: parent.horizontalCenter
        value: 0
    }

    Label {
        id: label
        x: 524
        y: 222
        width: 42
        height: 36
        text: slider.value
        anchors.bottom: slider.bottom
        font.pointSize: 24
        font.bold: true
        anchors.bottomMargin: 0
    }

Connections{
target:slider
onMoved:label.text=Math.round(slider.value*100)
}
}
