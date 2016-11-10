import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Item {
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    GridLayout {
        id: gridLayoutConnections
        rows: 7
        flow: GridLayout.TopToBottom
        anchors.fill: parent
        Layout.fillHeight: true
        Layout.fillWidth: true

        TableView {
            id: tableViewConnections
            parent: gridLayoutConnections
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.rowSpan: 5
            Layout.topMargin: 8

            TableViewColumn { title: "Name" }
            TableViewColumn { title: "Type" }
            TableViewColumn { title: "Interface" }
            TableViewColumn { title: "Connected" }
        }

        Label {
            text: "Connection Traffic"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.bold: true
        }

        TextArea {
            id: textAreaConnTraffic
            text: "THIS IS MY TEST TEXT!"
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            readOnly: true
        }

        Button {
            text: "New"
            Layout.topMargin: 8
        }
        Button { text: "Edit" }
        Button { text: "Connect" }
        Button { text: "Disconnect" }
        Button { text: "Delete" }
    }
}
