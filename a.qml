import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    color: "#ebf0f2"
    title: "NEW TASK"

    // Главный контейнер
    Rectangle {
        anchors.fill: parent
        color: "#ffffff"
        anchors.rightMargin: 0
        anchors.bottomMargin: -5
        anchors.leftMargin: 0
        anchors.topMargin: 73
        Button {
                    id: backButton
                    text: "<"
                    anchors.leftMargin: 0
                    anchors.topMargin: -61 // Текст символа
                    font.pixelSize: 24
                    width: 50
                    height: 50
                    anchors.left: parent.left  // Расположить слева
                    anchors.top: parent.top    // Расположить сверху
                    anchors.margins: 10        // Отступ от краев
                    background: Rectangle {
                        color: "transparent"
                    }

                    // Событие при нажатии
                    onClicked: {
                        console.log("Back button pressed")
                        Qt.quit()  // Например, закрыть окно или перейти назад
                    }
                }
        // Заголовок
        Text {
            y: -51
            width: 109
            height: 31
            text: "NEW TASK"
            anchors.horizontalCenterOffset: 2
            font.pixelSize: 23
            color: "#000000"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        // Кнопка с категориями
        ComboBox {
            id: categoryBox
            y: 117
            anchors.top: descriptionField.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: -331
            model: ["Срочное", "Учеба", "Работа", "Прочее"]
            width: parent.width * 0.9
            anchors.horizontalCenterOffset: 1

        }

        // Поле для названия
        TextField {
            id: titleField
            width: parent.width * 0.9
            anchors.horizontalCenterOffset: 1
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 62
            placeholderText: "Название задачи"
        }

        // Поле для содержимого заметки
                    TextArea {
                        id: contentArea
                        x: 21
                        y: 176
                        width: 360
                        placeholderText: "Введите содержимое заметки"
                        height: 263
                        color: "#000000"
                        background: Rectangle {
                            color: "#ffffff"
                            radius: 5
                        }
                    }


        // Контейнер для кнопок
        Row {
            id: buttonRow
            y: 476
            anchors.horizontalCenterOffset: 1
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom  // Кнопки внизу
            anchors.bottomMargin: 26       // Отступ снизу

            // Кнопка Cancel

            // Кнопка Accept

            Button {
                id: acceptButton
                x: -49
                y: -37
                width: 104
                text: "Accept"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 3
                transformOrigin: Item.Center
                anchors.margins: 10
                font.pixelSize: 18

                // Цвет текста
                contentItem: Text {
                    y: 8
                    font: acceptButton.font
                    color: "#fdfdfd"
                    text: "Accept" // Установите желаемый цвет текста
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                background: Rectangle {
                    x: -4
                    y: 0
                    width: 115
                    height: 39
                    color: "#784fd7" // Светлый фон для кнопки
                    radius: 5        // Скругление углов
                }

                onClicked: {
                    console.log("Accept button clicked")
                }
            }

        }

        // Свободное перемещение кнопок (опционально)
        MouseArea {
            anchors.fill: buttonRow
            property int startY: 0
            x: 33
            width: 123
            height: 38
            anchors.bottomMargin: -18
            anchors.topMargin: -10
            anchors.leftMargin: -24
            anchors.rightMargin: -24

            onPressed: startY = mouse.y
            onPositionChanged: {
                var newY = buttonRow.y + (mouse.y - startY)
                if (newY > 0 && newY + buttonRow.height < parent.height) {
                    buttonRow.y = newY
                }
            }
        }

        Text {
            id: element
            x: 21
            y: 33
            text: qsTr("Category:")
            font.pixelSize: 19
        }
    }
}

/*##^##
Designer {
    D{i:10;anchors_width:73;anchors_x:-63;anchors_y:-37}
}
##^##*/
