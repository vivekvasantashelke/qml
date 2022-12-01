import QtQuick 2.12
import QtQuick.Window 2.12

/*
QML Lives on top of C++ Qt
You can expose c++ classes to QML
C++ is an advanced topic not covered in this course
C++ and QML commuicate via signals and slots
open main.cpp and explain whats going on
*/

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
}
