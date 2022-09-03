import QtQuick

Window {
    width: 512
    height: 128
    visible: false
    title: qsTr("About")

   Image{
       source: "img/VirtualMathLogo.png"
       anchors.centerIn: parent
   }
}
