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
        x: 246
        y: 166
        width: 200
        height: 53
    }

    Label {
        id: label
        x: 125
        y: 171
        width: 56
        height: 44
        text: qsTr("X to Y")
        anchors.verticalCenter: column.verticalCenter
        anchors.top: rangeSlider.top
        font.pointSize: 25
        font.bold: true
    }

    RangeSlider {
        id: rangeSlider
        x: 266
        y: 186
        width: 200
        height: 59
        anchors.bottom: column.bottom
        anchors.horizontalCenterOffset: 7
        anchors.bottomMargin: -26
        second.value: 0.75
        first.value: 0.25
        anchors.horizontalCenter: column.horizontalCenter
    }

    Connections{
    target: rangeSlider.first
    onValueChanged:
    {
            label.text=Math.round(rangeSlider.first.value*100)+"to"+Math.round(rangeSlider.second.value*100)

    }
    }

    Connections{
    target: rangeSlider.second
    onValueChanged:
    {
            label.text=Math.round(rangeSlider.first.value*100)+"to"+Math.round(rangeSlider.second.value*100)

    }
    }

}
