import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQml.Models 2.2
Window {
    width: 640
    height: 480
    visible: true

    Item {
        width: 200; height: 200

        Rectangle {
            x: 10; y: 10
            width: 20; height: 20
            color: "red"
            id: rect
            Drag.active: dragArea.drag.active
            Drag.hotSpot.x: 10
            Drag.hotSpot.y: 10

            MouseArea {
                id: dragArea
                anchors.fill: parent
                drag.target: parent
            }
        }
        Text {
            id: txt
            text: rect.x+" "+rect.y
        }

    }
}
