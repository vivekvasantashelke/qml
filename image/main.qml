import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")



    //java sricpt

    property var middle: height /2


    Image {
        id: localimage
        source: "images/delta_pic"

        height: 300

     //  width: 300
     //   height: 200

        fillMode: Image.PreserveAspectFit

        x:400
        y:middle-100

    }



    Image {
        id: remoteimage
        source: "http://t3.gstatic.com/images?q=tbn:ANd9GcRjgn6tClrXNm0N6eEgA9wiIk2C9ZgHzcNWJIIfsjrJTUMFcjoa"


        height: 300

     //  width: 300
     //   height: 200

        fillMode: Image.PreserveAspectFit

        x:100
     //   y:middle-100

        onProgressChanged: console.log(remoteimage.progress)
        onStateChanged: if(remoteimage.status==Image.Ready) console.log("Remote image was loaded")


    }


}
