import QtQuick 2.7

Page1Form {
    property int devCount: 0

    btnAddModbusDevice.onClicked: {
        var c = Qt.createComponent("MBDevice.qml");
        var t = tabViewMain.addTab("MBDevice" + (++devCount), c);
        tabViewMain.currentIndex = tabViewMain.count - 1;
    }
}
