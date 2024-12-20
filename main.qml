import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 480
    height: 800
    color: "#b5d2f9"
    title: "NEW TASK"

    // Главный контейнер
    Rectangle {
        y: 71
        anchors.fill: parent
        color: "#55d4ea"
        radius: 29
        border.width: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: -50
        anchors.leftMargin: 0
        anchors.topMargin: 123
        Rectangle {
            id: rectangle2
            x: 1
            y: -122
            width: 478
            height: 81
            color: "#bd820a"
        }
        Rectangle {
            id: rectangle3
            x: 447
            y: -105
            width: parent.width * 0.9
            height: 84
            color: "#f9cf74"
            radius: 42
        }
        Rectangle {
            id: rectangle4
            x: -399
            y: -105
            width: parent.width * 0.9
            height: 84
            color: "#f6cd74"
            radius: 42
        }
        Rectangle {
            id: rectangle5
            x: -5
            y: -149
            width: 490
            height: 92
            color: "#e79f06"
            radius: 37.5
        }


        Button {
                    id: backButton
                    text: "<"
                    anchors.leftMargin: 25
                    anchors.topMargin: -40 // Текст символа
                    font.pixelSize: 34
                    width: 37
                    height: 30
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
            y: -110
            width: 119
            height: 31
            anchors.horizontalCenterOffset: 2
            font.pixelSize: 23
            color: "#000000"
            text: "NEW TASK"
            font.bold: true
            font.family: "Arial"
            anchors.horizontalCenter: parent.horizontalCenter


        }

        // Кнопка с категориями
        ComboBox {
            id: categoryBox
            y: 66
            anchors.top: descriptionField.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: -331
            model: ["Срочное", "Учеба", "Работа", "Прочее"]
            width: parent.width * 0.9
            height: 38
            anchors.horizontalCenterOffset: 1
            background: Rectangle {
                color: "#ffffff"
                radius: 5
            }
        }

        // Поле для названия
        TextField {
            id: titleField
            width: 432
            height: 39
            anchors.horizontalCenterOffset: 2
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 128
            placeholderText: "Название заметки"
            background: Rectangle {
                color: "#ffffff"
                radius: 5
            }

        }

        // Поле для содержимого заметки
                    TextArea {
                        id: contentArea
                        x: 25
                        y: 191
                        width: 432
                        placeholderText: "Введите содержимое заметки"
                        height: 263
                        color: "#000000"
                        font.wordSpacing: 0
                        background: Rectangle {
                            color: "#ffffff"
                            radius: 10
                        }


                    }


        // Контейнер для кнопок
        Row {
            id: buttonRow
            y: 569
            width: 102
            height: 57
            anchors.horizontalCenterOffset: -10
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom  // Кнопки внизу
            anchors.bottomMargin: 101       // Отступ снизу

            // Кнопка Accept
            Button {
                           id: acceptButton
                           width: 120
                           height: 45
                           text: "Accept"
                           font.pixelSize: 18
                           background: Rectangle {
                               color: "#f9cf74"
                               radius: 14
                           }
                           onClicked: {
                               console.log("Accept button clicked")
                           }
                       }


        }



        Text {
            id: element
            x: 25
            y: 37
            text: qsTr("Category:")
            font.pixelSize: 19
        }

    }


}
