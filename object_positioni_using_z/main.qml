import QtQuick 2.12
import QtQuick.Window 2.12



Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var midx: widt/2
    property var midy: height/2

    MyShap
    {
        color: "red"
        x:midx-(width/2)
        y:midy-(height/2)-30
    }

    MyShap
    {
        color: "green"
        x:midx-(width/2)+55
        y:midy-(height/2)+30
    }

    MyShap
    {
        color: "blue"
        x:midx-(width/2)-55
        y:midy-(height/2)+30
    }


}
