import QtQuick 2.12
import QtQuick.Window 2.12


//id must be uniqe
//root object there can be
//top level object is root object

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    //this is a comment

    /* this is a multi-line*/

    Image {
        id: myimage
       // source: "C:/he8v3/icon/java_book"
      //  anchors.centerIn:parent
      source: "http://t3.gstatic.com/images?q=tbn:ANd9GcRjgn6tClrXNm0N6eEgA9wiIk2C9ZgHzcNWJIIfsjrJTUMFcjoa"
 anchors.centerIn:parent

      width: 150
height: 100


Rectangle{

color: "red"
//width: parent.height

width: 150
//height: parent.height
height: 50
//opacity: 0.5  //50% -0.0-1.0

opacity: 1
}

    }

}
