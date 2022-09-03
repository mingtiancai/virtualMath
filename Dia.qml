import QtQuick

Window {
    width: 640
    height: 480
    visible: false
    title: qsTr("dia")

    Rectangle{
        width:400
        height: 400
        color: "green"
        visible: true
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked: {
                parent.color='red'
                }
            }
                
        }
    }
