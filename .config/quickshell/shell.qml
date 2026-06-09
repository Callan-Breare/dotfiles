//@ pragma UseQApplication

import Quickshell
import QtQuick

ShellRoot {
    id: root

    Loader {
        active: true
        source: "./modules/Panels/Bar.qml"
    }
}