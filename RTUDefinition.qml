import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Item {
    Layout.fillHeight: true
    Layout.fillWidth: true

    GridLayout {
        id: gridLayoutRTUDefinition
        columns: 3
        flow: GridLayout.LeftToRight
        anchors.fill: parent
        Layout.fillHeight: true
        Layout.fillWidth: true

        Label { text: "Function:" }

        ListModel {
            id: modelFunctions
            ListElement { text: "0x01 - Read Coils" }
            ListElement { text: "0x02 - Read Inputs" }
            ListElement { text: "0x03 - Read Holding Registers" }
            ListElement { text: "0x04 - Read Input Registers" }
            ListElement { text: "0x05 - Write Single Coil" }
            ListElement { text: "0x06 - Write Single Register" }
            ListElement { text: "0x0F - Write Multiple Coils" }
            ListElement { text: "0x10 - Write Multiple Registers" }
        }

        ComboBox {
            id: cbFunction
            model: modelFunctions
            Layout.columnSpan: 2
            currentIndex: 2
//            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label { text: "Slave ID:" }

        SpinBox {
            id: sbSlaveID
            minimumValue: 1
            maximumValue: 65535
//            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        CheckBox {
            id: chkExtended
            text: "Extended"
            checked: true
        }

        Label { text: "Address:" }

        SpinBox {
            id: sbAddress
            minimumValue: 0
            maximumValue: 65535
            value: 3001
//            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            Layout.row: 3
            text: "Quantity:"
        }

        SpinBox {
            id: sbQuantity
            minimumValue: 1
            maximumValue: 65535
//            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            Layout.row: 4
            text: "Interval:"
        }

        SpinBox {
            id: sbInterval
            minimumValue: 1
            maximumValue: 86400000
            value: 10000
            suffix: " ms"
            stepSize: 100
//            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            Layout.row: 5
            text: "Register Size:"
        }

        ComboBox {
            id: cbRegisterSize
            model: [ "16-bit", "32-bit" ]
//            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            Layout.row: 6
            text: "Timeout:"
        }

        SpinBox {
            id: sbTimeout
            minimumValue: 1
            maximumValue: 60000
            value: 3000
            suffix: " ms"
            stepSize: 100
//            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            Layout.row: 7
            text: "Byte Order:"
        }

        ComboBox {
            id: cbByteOrder
            model: [ "Big-Endian (MSB)", "Little-Endian (LSB)" ]
            Layout.columnSpan: 2
//            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label { text: "Word Order:" }

        ComboBox {
            id: cbWordOrder
            model: [ "Big-Endian (MSW)", "Little-Endian (LSW)" ]
            Layout.columnSpan: 2
//            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
