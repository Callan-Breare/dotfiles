import Quickshell
import QtQuick

FloatingWindow {
    visible: true
    width: 200
    height: 100

    Text {
        achors.centerin: parent
        text: "Hello World!"

        color: "#0db9d7"
        font.pixelSize: 18
    }
}