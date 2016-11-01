import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Item {
    anchors.fill: parent

    GridLayout {
        id: gridLayoutConnections
        parent: gridOuter
        rows: 8
        flow: GridLayout.TopToBottom
        anchors.fill: parent

        TableView {
            id: tableViewConnections
            parent: gridLayoutConnections
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.rowSpan: 5

            TableViewColumn { title: "Name" }
            TableViewColumn { title: "Type" }
            TableViewColumn { title: "Interface" }
            TableViewColumn { title: "Connected" }
        }

        Label {
            text: "Connection Traffic"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.bold: true
        }

        TextArea {
            id: textAreaConnTraffic
            text: "This widget spans over three rows in the GridLayout.\n"
                + "All items in the GridLayout are implicitly positioned from top to bottom."
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            readOnly: true
        }

        Button {
            id: btnSaveConnTraffic
            text: "Save Text"
            Layout.alignment: Qt.AlignCenter
        }

        Button { text: "New" }
        Button { text: "Edit" }
        Button { text: "Connect" }
        Button { text: "Disconnect" }
        Button { text: "Delete" }

        Button {
            text: "Clear Text"
            Layout.leftMargin: -442
        }
    }
}
