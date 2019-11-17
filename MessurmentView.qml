import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12
import QtQuick.Controls 2.13
import QtQuick 2.13
import QtQuick.Controls 2.13
import QtGraphicalEffects 1.12
import QtCharts 2.3



//page that holds all elements for hm
Page {
    id:messurmentPageId

    title: qsTr("TestV1")

//background
    Rectangle{
        anchors.fill: parent
        color: "ghostwhite"
    }

//Header
    MButton{
        id:messurmentHeaderId
        width: parent.width - 30
        height: 80
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        visibleLine: false

    }

//List of messurments
    Rectangle{
        id:messurment2RecId
        anchors.top: messurmentHeaderId.bottom ; anchors.left: parent.left
        anchors.topMargin: 10
        anchors.leftMargin: 15
        width: parent.width * 1/3 - 20 ; height: (parent.height * 2/3) - 70

        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
        }

        ListView{
            id: messurmentListId
            anchors.fill: parent
            model: 3
            clip: true
            interactive: false

            delegate: messurmentDelegateId
        }

        Component{
            id: messurmentDelegateId

            MButton{
                width: parent.width
                height: messurmentListId.height / messurmentListId.count
                textL: qsTr("Puls: ")
                color: Qt.darker("paleturquoise", 1.2)
                shadow: false

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        startConnecting(index)
                    }
                }
            }
        }
    }

    ChartView{
        id:lineChartId
        anchors.top: messurmentHeaderId.bottom ; anchors.right: parent.right
        anchors.topMargin: 0
        anchors.rightMargin: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        width: parent.width * 2/3 - 25 ; height: implicitHeight


        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
        }

        LineSeries {
            name: "Puls"
            color: "red"
            XYPoint { x: 0; y: 60 }
            XYPoint { x: 1.1; y: 70 }
            XYPoint { x: 1.9; y: 65 }
            XYPoint { x: 2.1; y: 82 }
            XYPoint { x: 2.9; y: 59 }
            XYPoint { x: 3.4; y: 59 }
            XYPoint { x: 4.1; y: 79 }
            XYPoint { x: 0; y: 99 }
            XYPoint { x: 1.1; y: 94 }
            XYPoint { x: 1.9; y: 91 }
            XYPoint { x: 2.1; y: 99 }
            XYPoint { x: 2.9; y: 92 }
            XYPoint { x: 3.4; y: 98 }
            XYPoint { x: 4.1; y: 90 }
        }
        LineSeries {
            name: "Bloodtrykk"
            color: "green"
            XYPoint { x: 0; y: 99 }
            XYPoint { x: 1.1; y: 94 }
            XYPoint { x: 1.9; y: 91 }
            XYPoint { x: 2.1; y: 99 }
            XYPoint { x: 2.9; y: 92 }
            XYPoint { x: 3.4; y: 98 }
            XYPoint { x: 4.1; y: 90 }
        }
    }



    //back home rectangel
        MButton{
            id: homeButtontId
            anchors.left: parent.left ; anchors.top: messurment2RecId.bottom
            anchors.bottom: parent.bottom
            anchors.leftMargin: 15
            anchors.topMargin: 10
            anchors.bottomMargin: 10

            visibleLine: false

            width: parent.width* 1/3 -20 ; height: implicitHeight


            text: qsTr("HOME")

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    stackViewId.pop()
                    console.log("home button pushed")
                }
            }
        }
}
