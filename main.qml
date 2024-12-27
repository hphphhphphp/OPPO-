import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 480
    height: 800
    color: "#b5d2f9"

    Rectangle {
        y: 71
        width: 461
        anchors.fill: parent
        color: "#55d4ea"
        radius: 29
        border.width: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: -50
        anchors.leftMargin: 0
        anchors.topMargin: 123
        Rectangle {
            id: rectangle6
            x: 132
            y: 519
            width: 200
            height: 244
            color: "#e59026"
            radius: 82
        }

        Rectangle {
            id: rectangle
            x: 0
            y: 589
            width: 480
            height: 182
            color: "#eeb774"
            radius: 50
        }



        Rectangle {
            id: rectangle1
            x: 132
            y: 534
            width: 200
            height: 200
            color: "#eeb774"
            radius: 82
        }

        Rectangle {
            id: rectangle7
            x: 182
            y: 551
            width: 105
            height: 94
            color: "#cf5d04"
            radius: 100
        }

        Rectangle {
            id: rectangle2
            x: 8
            y: -119
            width: 478
            height: 81
            color: "#a96912"
        }
        Rectangle {
            id: rectangle3
            x: 449
            y: -99
            width: parent.width * 0.9
            height: 84
            color: "#f4b56e"
            radius: 42
        }
        Rectangle {
            id: rectangle4
            x: -403
            y: -99
            width: parent.width * 0.9
            height: 84
            color: "#f4b56e"
            radius: 42
        }
        Rectangle {
            id: rectangle5
            x: -4
            y: -153
            width: 490
            height: 92
            color: "#e79f06"
            radius: 37.5
        }


        Button {
                    id: backButton
                    text: "<"
                    anchors.leftMargin: 25
                    anchors.topMargin: -40
                    font.pixelSize: 34
                    width: 37
                    height: 30
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.margins: 10
                    background: Rectangle {
                        color: "transparent"
                    }

                    // Событие при нажатии
                    onClicked: {
                        console.log("Back button pressed")
                        Qt.quit()
                    }
                }

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


        Row {
            id: buttonRow
            y: 569
            width: 102
            height: 57
            anchors.horizontalCenterOffset: -10
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 101

            Rectangle {
                    id: button
                    width: 105
                    height: 94
                    anchors.centerIn: parent
                    color: "#F37101"
                    radius: 45
                    border.color: "#f37101"
                    border.width: 2

                    Text {
                        x: 39
                        y: 24
                        width: 39
                        height: 56
                        text: "+"
                        anchors.centerIn: parent
                        font.bold: true
                        font.pixelSize: 48
                        color: "#ffffff"
                    }


                    MouseArea {
                        id: buttonMouseArea
                        x: 2
                        anchors.bottomMargin: -8
                        anchors.leftMargin: 0
                        anchors.topMargin: 8
                        anchors.rightMargin: 0
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor

                        onEntered: button.color = "#F37101"
                        onExited: button.color = "#55d4ea"
                        onClicked: console.log("Accept button clicked!")
                    }
                }
            }


    }



    Text {
        id: element
        x: 25
        y: 161
        text: qsTr("Category:")
        font.pixelSize: 19
    }





    }



