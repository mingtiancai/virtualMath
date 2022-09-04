import QtQuick
import QtQuick.Window
import QtCore
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    visible: true
    visibility:"Maximized"
    title: qsTr("VirtualMath")

    Dia{
        id:dia
    }

    About{
        id:about
    }

    MenuBar{
        Menu{
            title: qsTr("&File")
            MenuItem{
                text: qsTr("&Open")
            }

            MenuItem{
                text: qsTr("&Close")
                onTriggered: close()
            }
        }
        Menu{
            title: qsTr("&Edit")
        }

        Menu{
            title: qsTr("&View")
        }

        Menu{
            title: qsTr("&Search")
        }

        Menu{
            title: qsTr("&Run")
        }

        Menu{
            title: qsTr("&Debug")
        }

        Menu{
            title: qsTr("&Tools")
        }

        Menu{
          title: qsTr("&Help")
          MenuItem{
              text: qsTr("&About")
              onTriggered: about.show()
          }
        }
    }


    Image{
       source: "resource/img/test.png"
       anchors.centerIn: parent
   }

}
