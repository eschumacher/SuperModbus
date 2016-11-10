import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.4

Item {
    width: 1024
    height: 800
    property alias btnAddModbusDevice: btnAddModbusDevice
    property alias tabViewMain : tabViewMain

    Button {
        id: btnAddModbusDevice
        x: 8
        y: 24
        width: 110
        height: 40
        text: qsTr("Add Device")
    }

    Button {
        id: btnRemoveModbusDevice
        x: 128
        y: 24
        width: 110
        height: 40
        text: qsTr("Remove Device")
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
        id: tabViewMain
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
