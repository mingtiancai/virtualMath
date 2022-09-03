import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("VirtualMath")

    Dia{
        id:dia
    }

    About{
        id:about
    }

    Image{
       source: "img/test.png"
       anchors.centerIn: parent
   }

   Rectangle {
            width: 200; height: 100
            color: "red"

            Text {
                id: txt
                text: "show dia"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea {
                id: mouse_area
                anchors.fill: parent  // 有效区域
                onClicked: {
//                    dia.show()	//另一个qml文件显示
//                    about.show()
                    myObject.printMsg()
                    console.log(myObject.add(12,33))
                    myObject.getMsg("我是","帅哥")
                }
            }
        }
}
