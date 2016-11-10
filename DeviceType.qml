import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Item {
    GridLayout {
        id: gridLayoutDeviceType
        rows: 1
        flow: GridLayout.LeftToRight
        anchors.fill: parent

        Label { text: "Connection:" }

        ListModel {
            id: modelConnections
        }

        ComboBox {
            id: cbConnection
            model: modelConnections
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label { text: "Protocol:" }

        ListModel {
            id: modelProtocols
            ListElement { text: "RTU" }
            ListElement { text: "TCP/IP" }
        }

        ComboBox {
            id: cbProtocol
            model: modelProtocols
            Layout.fillHeight: true
            Layout.fillWidth: true
            currentIndex: 0
        }

        Button {
            id: btnRun
            text: "Run"
        }

        CheckBox {
            id: chkContinuous
            text: "Continous"
        }
    }
}
