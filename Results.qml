import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Item {
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    GridLayout {
        id: gridLayoutResults
        columns: 2
        flow: GridLayout.LeftToRight
        anchors.fill: parent
        Layout.fillHeight: true
        Layout.fillWidth: true

        TableView {
            id: tableViewResults1
            parent: gridLayoutResults
            Layout.fillHeight: true
            Layout.fillWidth: true

            TableViewColumn {
                title: "Address"
                width: parent.width / 8
            }

            TableViewColumn {
                title: "Format"
                width: parent.width / 8
            }

            TableViewColumn {
                title: "Value"
                width: parent.width / 4 - 2
            }
        }

        TableView {
            id: tableViewResults2
            parent: gridLayoutResults
            Layout.fillHeight: true
            Layout.fillWidth: true

            TableViewColumn {
                title: "Address"
                width: parent.width / 8
            }

            TableViewColumn {
                title: "Format"
                width: parent.width / 8
            }

            TableViewColumn {
                title: "Value"
                width: parent.width / 4 - 2
            }
        }
    }
}
