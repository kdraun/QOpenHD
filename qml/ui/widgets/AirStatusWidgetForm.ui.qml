import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13
import QtGraphicalEffects 1.13
import Qt.labs.settings 1.0

import OpenHD 1.0

Item {    
    id: airBatteryWidget
    width: 112
    height:24

    Text {
        id: chip_air
        y: 0
        width: 24
        height: 24
        color: "#ffffff"
        text: "\uf2db"
        anchors.right: cpuload_air.left
        anchors.rightMargin: 2
        anchors.verticalCenter: parent.verticalCenter
        font.family: "Font Awesome 5 Free"
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14
        horizontalAlignment: Text.AlignRight
        elide: Text.ElideRight
    }


    Text {
        id: cpuload_air
        x: 0
        y: 0
        width: 34
        height: 24
        color: "#ffffff"
        text: OpenHDTelemetry.cpuload_air
        anchors.right: temp_air.left
        anchors.rightMargin: 2
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14
        horizontalAlignment: Text.AlignRight
        elide: Text.ElideRight
    }
    Text {
        id: temp_air
        x: 0
        y: 4
        width: 34
        height: 24
        color: "#ffffff"
        text: OpenHDTelemetry.temp_air
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 0
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14
        horizontalAlignment: Text.AlignRight
        elide: Text.ElideRight
    }

}