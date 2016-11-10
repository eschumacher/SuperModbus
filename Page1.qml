import QtQuick 2.7

Page1Form {
    btnAddModbusDevice.onClicked: {
        var c = Qt.createComponent("MBDevice.qml");
        var t = tabViewMain.addTab("MBDevice", c);
        tabViewMain.currentIndex = tabViewMain.count - 1;
    }
}
