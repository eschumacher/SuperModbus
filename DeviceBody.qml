import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Item {
    Layout.fillHeight: true
    Layout.fillWidth: true

    GridLayout {
        id: gridLayoutDeviceBody
        rows: 1
        flow: GridLayout.LeftToRight
        anchors.fill: parent
        Layout.fillHeight: true
        Layout.fillWidth: true

        GroupBox {
            title: "Definition"
            width: parent.width / 3.5
            Layout.fillHeight: true

            RTUDefinition {
                width: parent.width
                height: parent.height
            }
        }

        GroupBox {
            title: "Results"
            Layout.fillHeight: true
            Layout.fillWidth: true

            Results {
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }
}
