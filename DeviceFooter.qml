import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Item {
    GridLayout {
        id: gridLayoutDeviceFooter
        rows: 2
        flow: GridLayout.TopToBottom
        anchors.fill: parent


        Label {
            text: "Device Traffic"
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TextArea {
            id: textAreaDeviceTraffic
            text: "THIS IS MY TEST TEXT!"
            Layout.fillHeight: true
            Layout.fillWidth: true
            readOnly: true
        }
    }
}
