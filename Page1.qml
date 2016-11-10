import QtQuick 2.7

Page1Form {
    btnAddModbusDevice.onClicked: {
        var c = Qt.createComponent("MBDevice.qml");
        tabViewMain.addTab("MBDevice", c);
        var last = tabViewMain.count-1;
        tabViewMain.getTab(last).active = true;
    }
}
