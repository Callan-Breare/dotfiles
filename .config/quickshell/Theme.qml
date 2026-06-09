// Theme.qml
pragma Singleton
import QtQuick

QtObject {
    // Colors
    readonly property color backgroundColor: "#1a1a1a"
    readonly property color borderColor: "#333333"
    readonly property color accentColor: "#4a9eff"
    readonly property color textColor: "#ffffff"
    readonly property color textSecondary: "#cccccc"

    // Sizes
    readonly property int barHeight: 28
    readonly property int borderWidth: 2
    readonly property int cornerRadius: 15
    readonly property int spacing: 8
    readonly property int leftMargin: 16
    readonly property int workspaceWidth: 32
    readonly property int workspaceHeight: 24
}