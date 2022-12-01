import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Text {
        id: myText
     //   text: qsTr("text")
    text: qsTr("<html><b>Hello</b> <font color='green'>
 world</font></i></html><br><font color='#c0c0c0'>
 this is test</font><br><a href='http://wwwgoogle.com'>my link</a>")
        anchors.centerIn: parent
        font.pointSize: 35
       // font.bold: true   //might not work
      //  font.italic: false   //might not work



            color:"red"
            linkColor: "blue"
onLinkHovered: {
console.log("Hover: " +link)
        if(link)
        {
            myText.font.bold=true
            }

        else
        {
            myText.font.bold=false
        }




}
onLinkActivated: Qt.openUrlExternally(link)

    }


}
