import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Item {
    anchors.fill: parent

    GridLayout {
        id: gridLayoutMBDevice
        columns: 1
        flow: GridLayout.LeftToRight
        anchors.fill: parent
        columnSpacing: 8

        DeviceType {
            Layout.fillWidth: true
            height: 20
            Layout.margins: 8
        }

        DeviceBody {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.margins: 8
        }

        DeviceFooter {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.margins: 8
        }
    }
}
