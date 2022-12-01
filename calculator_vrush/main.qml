import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

property string i;
property string a;
property string b;
property string c;
Button {
id: button13
x: 76
y: 447
text: "0"
onClicked: {
i = text
t.text = t.text + i

}
}

Button {
id: button15
x: 76
y: 375
text: "1"
onClicked: {
i = text
t.text = t.text + i
}
}

Button {
id: button2
x: 136
y: 375
text: "2"
onClicked: {
i = text
t.text = t.text + i
}
}

Button {
id: button3
x: 203
y: 375
text: "3"

onClicked: {

i = text
t.text = t.text + i

}
}



Button {
id: button5
x: 76
y: 299
text: "4"
onClicked: {
i = text
t.text = t.text + i

}
}

Button {
id: button6
x: 136
y: 299
text: "5"
onClicked: {

i = text
t.text = t.text + i

}
}

Button {
id: button7
x: 203
y: 299
text: "6"
onClicked: {

i = text
t.text = t.text + i
}
}



Button {
id: button9
x: 76
y: 235
text: "7"
onClicked: {
i = text
t.text = t.text + i


}
}

Button {
id: button10
x: 136
y: 235
text: "8"
onClicked: {

i = text
t.text = t.text + i

}
}

Button {
id: button11
x: 203
y: 235
text: "9"
onClicked: {
i = text
t.text = t.text + i
}
}


Button {
id: button4
x: 136
y: 447
text: "+"
onClicked: {

a = t.text
//t.text = ""

b = t.text

   // t.text = (Number(a)+Number(b)).toString()
    StringHelper.apple(a,b);
//c = a + b

}


}
Button {
id: button8
x: 264
y: 299
text: "-"

onClicked: {

t.text = a
a.toString()

t.text = b
b.toString()

c = a - b;

}

Button {
id: button16
x: 0
y: 76
text: "*"

onClicked: {

t.text = a
a.toString()

t.text = b
b.toString()

c = a * b;
}
Button {
id: button12
x: -58
y: 72
text: "/"

onClicked: {

t.text = a
a.toString()

t.text = b
b.toString()

c = a / b;
   // t.text=c
}


}




TextField {
id: t
x:-188
y:-237
width: 240
height: 62
text: ""

}
}
}

Button {
id: button1
x: 316
y: 447
width: 39
height: 42
text: "="

onClicked: {

//t.text = c
t.text=StringHelper.apple(button15.text,button2.text);

}
}

Button {
id: button14
x: 264
y: 235
width: 42
height: 42
text: "C"
onClicked: {

t.text = ""

}
}


}
