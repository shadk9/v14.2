import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12
import QtQuick.Controls 2.13
import QtQuick 2.13
import QtQuick.Controls 2.13
import QtGraphicalEffects 1.12


//page that holds all elements for main view
Page {
    id:mainPage2Id

    title: qsTr("TestV1")

    Rectangle{
        anchors.fill: parent
        color: "ghostwhite"
    }


//heaeder
    MButton{
        id:headerId
        width: parent.width - 30
        height: 80
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        visibleLine: false

    }


//device connection rectangel
    Rectangle{
        id:deviceRecId
        anchors.top: headerId.bottom ; anchors.left: parent.left
        anchors.topMargin: 10
        anchors.leftMargin: 15
        width: parent.width * 1/3 - 20 ; height: (parent.height * 2/3) - 70

        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
//            horizontalOffset: 1
//            verticalOffset: 1
        }


        ListView{
            id: deviceListId
            anchors.fill: parent
            model: 3
            clip: true
            interactive: false

            delegate: deviceDelegateId
        }

        Component{
            id: deviceDelegateId

            MButton{
                width: parent.width
                height: deviceListId.height / deviceListId.count
                textL: qsTr("ENHET: ")
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


//Messurments rectangel
    Rectangle{
        id:messurmentsRecId
        anchors.top: headerId.bottom ; anchors.right: parent.right
        anchors.topMargin: 10
        anchors.rightMargin: 15
        width: parent.width * 2/3 - 25 ; height: parent.height- 210


        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true

        }


        ListView{
            id: messurmentsListId
            anchors.fill: parent
            model: 4
            clip: true
            interactive: false


            delegate: deviceDelegate2Id
        }

        Component{
            id: deviceDelegate2Id
            MButton{
                width: parent.width
                height: (messurmentsListId.height) / messurmentsListId.count
                textL: qsTr("ENHETS : VERDI")
                checkVis: true
                shadow: false
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        //startConnecting(index)
                    }
                }
            }
        }
    }

//Tilt(ish) Rectangel
    MButton{
        id:tiltRecId
        anchors.top: messurmentsRecId.bottom ; anchors.right:parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: 10
        anchors.rightMargin: 15
        anchors.bottomMargin: 10

        visibleLine: false

        width: parent.width* 2/3 - 25 ; height: implicitHeight

        text: "Tilt Score: "

    }




//Historical messurments rectangel
    MButton{
        id: historicalMessurmentId
        anchors.left: parent.left ; anchors.top: deviceRecId.bottom
        anchors.bottom: parent.bottom
        anchors.leftMargin: 15
        anchors.topMargin: 10
        anchors.bottomMargin: 10

        visibleLine: false

        width: parent.width* 1/3 -20 ; height: implicitHeight


        text: qsTr("   Historical\nMessurments")

        MouseArea{
            anchors.fill: parent
            onClicked: {
                stackViewId.push("MessurmentView.qml")
                console.log("Historical Messurments Button Clicked")
            }
        }
    }

}
