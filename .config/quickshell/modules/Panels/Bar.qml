// Bar.qml
import QtQuick
import Quickshell
import Quickshell.Hyprland

PanelWindow {
    implicitHeight: Theme.barHeight
    margins.top: Theme.barMarginTop

    Rectangle {
        anchors.fill: parent
        color: Theme.background
        border.color: Theme.border
        border.width: Theme.borderWidth
        radius: Theme.cornerRadius

        Row {
            anchors.left: parent.left
            anchors.leftMargin: Theme.leftMargin
            anchors.verticalCenter: parent.verticalCenter
            spacing: Theme.spacing

            Repeater {
                model: Hyprland.workspaces
                Rectangle {
                    width: Theme.workspace.width
                    height: Theme.workspace.height
                    radius: Theme.workspace.radius
                    color: modelData.active ? Theme.workspace.activeColor : Theme.workspace.inactiveColor
                    border.color: Theme.border
                    border.width: Theme.borderWidth

                    Text {
                        text: modelData.id
                        anchors.centerIn: parent
                        color: modelData.active ? Theme.textPrimary : Theme.textSecondary
                        font.pixelSize: 12
                    }
                }
            }
        }
    }
}