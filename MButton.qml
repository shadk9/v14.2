import QtQuick 2.13
import QtQuick.Controls 2.13
import QtGraphicalEffects 1.12

Item {
    id: itemId
    property alias text: text1Id.text
    property alias textL: textLeftId.text
    property alias textR: textRightId.text
    property alias color: b1.color
    property bool visibleLine: true
    property bool checked1: true
    property bool checkVis: false
    property bool shadow: true


    Rectangle{
        id: b1


        color:"snow"
        anchors.fill: parent

        layer.enabled: shadow
        layer.effect: DropShadow {
            transparentBorder: true
//            horizontalOffset: 1
//            verticalOffset: 1
        }


        Text {
            id: text1Id
            anchors.centerIn: parent

            text: qsTr("")
            font.family: "Helvetica"
            color: "black"
            font.pixelSize: 20
        }
        Text {
            id: textRightId
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 30

            text: qsTr("")
            font.family: "Helvetica"
            color: "black"
            font.pixelSize: 20
        }
        Text {
            id: textLeftId
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 20

            text: qsTr("")
            font.family: "Helvetica"
            color: "black"
            font.pixelSize: 20

        }


        CheckBox{
            id:checkBoxId
            anchors.right: parent.right
            anchors.rightMargin: 40
            anchors.verticalCenter: parent.verticalCenter
            checked: checked1
            visible: checkVis
        }



        Rectangle{
            id: b12
            visible: visibleLine
            height: 1
            width: parent.width * 0.95
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter

            color: Qt.lighter("deepskyblue", 1.8)
        }
    }

}
