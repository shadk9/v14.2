import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5


ApplicationWindow {

    visible: true
    width: 640
    height: 480
    title: qsTr("CERT MED PROTO V13")


    StackView{
        //Material.foreground: Material.white
        //Material.primary: Material.DeepOrange
        //Material.background: Material.Pink
        //Material.accent: Material.Teal

        id: stackViewId
        initialItem: "MessurmentView.qml"
        anchors.fill: parent


    }
}
