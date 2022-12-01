import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3
import QtQuick.Controls.Windows 6.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Label {
        id: label
        x: 185
        y: 47
        width: 98
        height: 44
        text: qsTr("this is label")
    }

    Label {
        id: label1
        x: 150
        y: 176
        width: 79
        height: 74
        color: "#1640cf"
        text: qsTr("this is long label titel very long")
        horizontalAlignment: Text.AlignLeft
        wrapMode: Text.WordWrap
        font.strikeout: false
        font.italic: true
        font.underline: true
        font.capitalization: Font.SmallCaps
        font.preferShaping: true
        font.kerning: true
        styleColor: "#300111"
    }

    Label {
        id: label2
        x: 17
        y: 264
        width: 416
        height: 84
        text: qsTr("this is <font color='blue'><b>H<i>T</i>ML</b>!!!</font>")
        font.pointSize: 45
    }
}
