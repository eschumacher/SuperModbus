import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.4

Item {
    width: 1024
    height: 800

    Button {
        id: btnAddConnection
        x: 8
        y: 24
        width: 110
        height: 40
        text: qsTr("Add Connection")
    }

    Button {
        id: button1
        x: 128
        y: 24
        width: 110
        height: 40
        text: qsTr("Add Modbus Device")
    }

    Button {
        id: btnSaveProject
        x: 786
        y: 24
        width: 110
        height: 40
        text: qsTr("Save Project")
    }

    Button {
        id: btnLoadProject
        x: 906
        y: 24
        width: 110
        height: 40
        text: qsTr("Load Project")
    }

    Label {
        id: lblTitle
        x: 244
        y: 18
        width: 536
        height: 53
        text: qsTr("SuperModbus")
        font.strikeout: false
        font.underline: false
        font.bold: true
        font.family: "Arial"
        font.pointSize: 40
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    TabView {
        id: tabView1
        x: 8
        y: 77
        width: 1008
        height: 701

        Tab {
            id: tabConnections
            source: "Connections.qml"
            title: "Connections"
        }
    }
}
