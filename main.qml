import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3

Window {


    visible: true
    width: 480
    height: 800
    maximumHeight: height
    maximumWidth: width

    minimumHeight: height
    minimumWidth: width
    title: qsTr("WorkUp")
    property double tc: 0
    property double tccomp: 0

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: startScr
    }
    StartScreen {
        Timer {
            interval: 5000; running: true; repeat: false
            onTriggered: stackView.push(mainMenu)
        }
        id: startScr
        background: Rectangle{
            id: bgrect
            color: "#072b52"
            ColorAnimation on color {
                from: "#072b52"
                to: "#a9cff8"
                duration: 2000
                easing.type: Easing.InOutSine
            }
        }

        Image {
            id: mountainsPng
            x: -146
            y: 798
            width: 772
            height: 468
            opacity: 1
            fillMode: Image.Stretch
            source: "Images/178-1787361_cartoon-drawing-illustration-cartoon-mountain.png"
        }




        Text {
            id: name4
            x: 76
            y: 332
            text: qsTr("WorkUp")
            font.family: "Kaph"
            font.pixelSize: 60
        }


        Text {
            id: name3
            x: 76
            y: 322
            color: "#7d3f13"
            text: qsTr("WorkUp")
            font.family: "Kaph"
            font.pixelSize: 60
        }

        Text {
            id: name2
            x: 76
            y: 313
            color: "#e87c30"
            text: qsTr("WorkUp")
            font.family: "Kaph"
            font.pixelSize: 60
        }

        Image {
            id: sunpng
            x: 138
            y: 42
            width: 204
            height: 192
            fillMode: Image.PreserveAspectFit
            source: "Images/1626661061_preview_sun.png"
        }

        ParallelAnimation{
            running: true
            NumberAnimation{
                targets: name2
                property: "y"
                from: 290
                to: 310
                duration: 2000
                easing.type: Easing.InOutSine
            }
            NumberAnimation{
                targets: name2
                property: "scale"
                from: 0
                to: 1.2
                duration: 2000
                easing.type: Easing.InOutSine
            }
            NumberAnimation{
                targets: name3
                property: "y"
                from: 295
                to: 320
                duration: 2150
                easing.type: Easing.InOutSine
            }
            NumberAnimation{
                targets: name3
                property: "scale"
                from: 0
                to: 1.15
                duration: 2150
                easing.type: Easing.InOutSine
            }
            NumberAnimation{
                targets: name4
                property: "y"
                from: 300
                to: 330
                duration: 2300
                easing.type: Easing.InOutSine
            }
            NumberAnimation{
                targets: name4
                property: "scale"
                from: 0
                to: 1.1
                duration: 2300
                easing.type: Easing.InOutSine
            }
            NumberAnimation{
                target: sunpng
                property: "scale"
                from: 0
                to: 1
                duration: 2500
                easing.type: Easing.InOutBack

            }
            NumberAnimation{
                target: sunpng
                property: "rotation"
                from: 0
                to: 360
                duration: 3000
                easing.type: Easing.InOutBack

            }
            NumberAnimation{
                target: mountainsPng
                property: "y"
                from: 800
                to: 500
                duration: 4000
                easing.type: Easing.InOutBack
            }

        }
        AnimatedImage {
            id: loadGif
            x: 209
            y: 745
            width: 62
            height: 47
            source: "Images/Animation - 1732552377190.gif"
        }


    }
    MainScreen {
        id: mainMenu
        visible: false
        ListModel{
            id: todoModel
        }

        Rectangle {
            id: rectangle
            x: 0
            y: -6
            width: 480
            height: 800
            color: "#a9cff8"
            border.width: 0
            border.color: "#797979"

            ProgressBar {
                id: progressBar
                x: 9
                y: 137
                width: 451
                height: 9
                wheelEnabled: false
                indeterminate: false
                value: 0
            }

            Rectangle {
                id: rectangle8
                x: 0
                y: -18
                width: 480
                height: 120
                color: "#a96811"
                radius: 40
            }

            Rectangle {
                id: rectangle7
                x: -135
                y: -21
                width: 178
                height: 176
                color: "#eeb773"
                radius: 100
            }

            Rectangle {
                id: rectangle6
                x: 437
                y: -14
                width: 178
                height: 176
                color: "#eeb773"
                radius: 100
            }

            Rectangle {
                id: rectangle5
                x: 0
                y: -40
                width: 480
                height: 120
                color: "#e89220"
                radius: 40
            }


            Text {
                id: appName
                x: 150
                y: 23
                width: 169
                height: 38
                color: "#000000"
                text: qsTr("WorkUP")
                font.family: "Kaph"
                font.pixelSize: 30
            }

            Rectangle {
                id: rectangle4
                x: 0
                y: 161
                width: 480
                height: 654
                color: "#49cae9"
                radius: 40
                border.width: 0
                border.color: "#a2a2a2"
            }


            ListView {
                id: listView1
                clip: true
                x: 33
                y: 185
                width: 413
                height: 535
                model: todoModel
                spacing: 10
                delegate: Rectangle {
                    clip: true
                    id: dlg
                    x: 5
                    radius: 10
                    width: parent.width-10
                    height: 40

                    property string title
                    property string description

                    title: _title
                    description: _des


                    Column{
                        anchors.fill: parent
                        anchors.leftMargin: 10
                        anchors.rightMargin: 10
                        topPadding: 5

                        Text {
                            text: dlg.title
                            anchors.top: parent.top
                            anchors.topMargin: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 30
                            font.pixelSize: 20
                            font.family: "Kaph"

                        }
                        Text {
                            id: descrip
                            text: dlg.description
                            anchors.top: parent.top
                            anchors.topMargin: 50
                            anchors.left: parent.left
                            anchors.leftMargin: 15
                            font.pixelSize: 12
                            font.family: "Kaph"

                        }
                    }
                    property bool openedtask: false
                    NumberAnimation {
                        id: hoverTasks
                        target: dlg
                        property: "scale"
                        duration: 200
                        from: 1
                        to: 0.9
                        easing.type: Easing.InOutSine
                    }
                    NumberAnimation {
                        id: hoverTasksRev
                        target: dlg
                        property: "scale"
                        duration: 200
                        from: 0.9
                        to: 1
                        easing.type: Easing.InOutQuad
                    }
                    NumberAnimation {
                        id:raskritie
                        target: dlg
                        property: "height"
                        duration: 200
                        from: dlg.height
                        to: 40 + 260*openedtask
                        easing.type: Easing.InOutSine
                    }
                    CheckBox{
                        id:taskCompletedCheck
                        anchors.left: dlg.left
                        anchors.leftMargin: 10
                        anchors.top: dlg.top
                        anchors.topMargin: 10
                        width: 20
                        height: 20
                        onCheckStateChanged: {
                            tccomp = tccomp-1+2*checked
                            console.log(tccomp)
                            progressBar.value = tccomp/tc
                        }
                    }
                    Rectangle{
                        width: 35
                        height: 35
                        radius: 10
                        color: "darkred"
                        anchors.right: dlg.right
                        anchors.rightMargin: 2.5
                        anchors.top: dlg.top
                        anchors.topMargin: 2.5
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                tc = tc - 1
                                delanim.start()
                            }
                        }
                    }
                    MouseArea {
                        hoverEnabled: true
                        anchors.fill: parent
                        anchors.leftMargin: 55
                        anchors.rightMargin: 55
                        onEntered: {
                            hoverTasks.start()
                        }
                        cursorShape: Qt.PointingHandCursor
                        onExited: {hoverTasksRev.start()}
                        onClicked: {
                            console.log(dlg.description)
                            openedtask = !openedtask
                            raskritie.start()
                        }
                    }
                    NumberAnimation {
                        id: delanim
                        target: dlg
                        property: "scale"
                        from: 0.9
                        to: 0
                        duration: 200
                        easing.type: Easing.InOutSine
                        onStopped: {
                            taskCompletedCheck.checked =0
                            todoModel.remove(index)
                        }
                    }


                }

            }


            Rectangle {
                id: rectangle9
                x: 146
                y: 633
                width: 187
                height: 176
                color: "#e49028"
                radius: 100
            }

            Rectangle {
                id: rectangle2
                x: 0
                y: 718
                width: 480
                height: 120
                color: "#eeb773"
                radius: 40
            }

            Rectangle {
                id: rectangle3
                x: 150
                y: 643
                width: 178
                height: 176
                color: "#eeb773"
                radius: 100
            }








        }

        Rectangle {
            x: -5
            y: 9
            width: 63
            height: 43
            color: "darkorange"
            radius: 20
            anchors.verticalCenterOffset: 311
            anchors.centerIn: parent

            Text {
                id: text2
                width: 47
                height: 8
                color: "#ffffff"
                text: qsTr("options")
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 0
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                font.pointSize: 6
                anchors.centerIn: parent
                font.family: "kaph"
            }

            Button {
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    stackView.push(settings)
                }
            }

            anchors.horizontalCenterOffset: -107
        }

        Rectangle {
            id: addButton1
            x: -3
            y: 6
            width: 107
            height: 108
            color: "#cb5f01"
            radius: 70
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 315
            anchors.horizontalCenterOffset: 1
        }

        Text {
            id: usernm
            x: 53
            y: 770
            width: 145
            height: 14
            color: "#ffffff"
            text: usernameField.text
            horizontalAlignment: Text.AlignHCenter
            font.underline: true
            font.family: "Courier"
            font.pixelSize: 12
        }
        Rectangle{
            id: addButton
            height: 108
            width: 107
            anchors.centerIn: parent;
            radius: 70
            anchors.verticalCenterOffset: 320
            anchors.horizontalCenterOffset: 1
            color: "#f37100"

            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: { addButton.color = "#d15803" }
                onExited: { addButton.color = "#f37100" }
                cursorShape: Qt.PointingHandCursor
                onClicked:
                {
                    stackView.push(newTaskCreate)
                }
                opacity: 0
            }

            Text {
                x: 17
                y: -13
                width: 72
                height: 99
                color: "#ffecdd"
                text: qsTr("+")
                font.family: "Tahoma"
                font.pixelSize: 100
            }
        }

    }
    NewTaskCreate{

        id: newTaskCreate
        visible: false
        Rectangle {
            id: bgnt
            x: 0
            y: 0
            width: 480
            height: 800
            color: "#1c1b1b"

            TextField {

                id: taskName
                x: 24
                y: 141
                width: 432
                height: 40
                font.family: "Courier"
                visible: true
                transformOrigin: Item.Center
                placeholderText: qsTr("Task Name")
            }

            ComboBox {
                id: comboBox
                x: 316
                y: 99
                width: 140
                height: 30
                model: ListModel{
                    ListElement{
                        text: "Срочное"
                    }
                    ListElement{
                        text: "Учеба"
                    }
                    ListElement{
                        text: "Работа"
                    }
                    ListElement{
                        text: "Прочее"
                    }
                }
            }

            Text {
                id: category
                x: 214
                y: 103
                color: "#ffffff"
                text: qsTr("CATEGORY")
                font.family: "Courier"
                font.pixelSize: 20
            }

            Text {
                id: element1
                x: 24
                y: 33
                width: 432
                height: 60
                color: "#ffffff"
                text: qsTr("NEW TASK")
                horizontalAlignment: Text.AlignRight
                font.family: "Courier"
                fontSizeMode: Text.HorizontalFit
                textFormat: Text.AutoText
                font.pixelSize: 50
            }
        }

        Rectangle{
            height: 50
            width: 200
            anchors.centerIn: parent;
            radius: 20
            anchors.verticalCenterOffset: 333
            anchors.horizontalCenterOffset: -114
            color: "darkred"
            Text {
                id: textCancelCreate
                text: qsTr("Cancel")
                font.family: "Courier"
                font.pointSize: 15
                anchors.centerIn: parent
                color: "white"
            }
            Button{
                anchors.fill: parent
                onClicked:
                {
                    stackView.pop()
                }
                opacity: 0
            }
        }

        Rectangle{
            height: 50
            width: 200
            anchors.centerIn: parent;
            radius: 20
            anchors.verticalCenterOffset: 333
            anchors.horizontalCenterOffset: 115
            color: "darkgreen"
            Text {
                id: textAcceptCreate
                text: qsTr("Accept")
                font.pointSize: 15
                font.family: "Courier"
                anchors.centerIn: parent
                color: "white"
            }

            Button{
                anchors.fill: parent
                onClicked:
                {
                    tc = tc + 1
                    console.log(tc)
                    todoModel.append({"_title": taskName.text,"_des": taskDescr.text})
                    stackView.pop()

                    taskName.text = " "
                    taskDescr.text = " "

                }
                opacity: 0
            }
        }

        Rectangle {
            id: rectangle1
            x: 26
            y: 211
            anchors.fill: parent
            color: "#ffffff"
            radius: 20
            anchors.rightMargin: 25
            anchors.bottomMargin: 118
            anchors.leftMargin: 26
            anchors.topMargin: 198

            TextEdit {
                id: taskDescr
                x: 26
                y: 211
                anchors.fill: parent
                color: "#000000"
                text: qsTr("")
                font.family: "Courier"
                anchors.rightMargin: 16
                anchors.bottomMargin: 26
                anchors.leftMargin: 15
                anchors.topMargin: 14
                selectionColor: "#e9a2ee"
                font.pixelSize: 12
            }
        }
    }
    Settings{
        id: settings
        visible: false
        background: Rectangle{
            color: "#1c1b1b"
        }


        Text {
            id: element
            x: 144
            y: 29
            color: "#ffffff"
            text: qsTr("SETTINGS")
            font.family: "Courier"
            font.pixelSize: 40
        }

        TextField {
            id: usernameField
            x: 140
            y: 87
            placeholderText: qsTr("Username")
        }

        ComboBox {
            id: categoriesBox
            x: 140
            y: 159
            width: 200
            height: 40
            model: ListModel{
                id: categoryModel
                ListElement{
                    text: "Quickly"
                }
                ListElement{
                    text: "Study"
                }
                ListElement{
                    text: "Work"
                }
                ListElement{
                    text: "Other"
                }
            }

            Button {
                id: button
                x: 234
                y: -72
                width: 43
                height: 40
                text: qsTr("ok")
            }

            Text {
                id: createCategoryLink
                x: 0
                y: 49
                color: "#9714cd"
                text: qsTr("Create Category")
                font.family: "Courier"
                font.underline: true
                font.pixelSize: 12
                Button{
                    opacity: 0
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        console.log("clicked")
                    }
                }
            }

            ComboBox {
                id: comboBox1
                x: 0
                y: 87
                width: 200
                height: 40
                model: ListModel{
                    ListElement{
                        text: "Started"
                    }
                    ListElement{
                        text: "In Process"
                    }
                    ListElement{
                        text: "Finished"
                    }
                }
            }

            TextEdit {
                id: createStatusLink
                x: 0
                y: 133
                width: 80
                height: 20
                color: "#a108bc"
                text: qsTr("Create Status")
                font.underline: true
                font.family: "Courier"
                selectionColor: "#9c25da"
                font.pixelSize: 12
            }

            Button {
                id: deleteAllTasksBut
                x: 3
                y: 159
                width: 197
                height: 40
                text: qsTr("Delete All Tasks")
                onClicked: {
                    tc = 0
                    todoModel.clear()            }
            }

            Rectangle{
                height: 50
                width: 200
                anchors.centerIn: parent;
                radius: 20
                anchors.verticalCenterOffset: 333
                anchors.horizontalCenterOffset: -114
                color: "darkred"
                Text {
                    id: textSettings
                    text: qsTr("Cancel")
                    font.family: "Courier"
                    font.pointSize: 15
                    anchors.centerIn: parent
                    color: "white"
                }
                Button{
                    anchors.fill: parent
                    onClicked:
                    {
                        stackView.pop()
                    }
                    opacity: 0
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:8;anchors_height:166;anchors_width:166;anchors_x:157;anchors_y:194}D{i:9;anchors_height:166;anchors_width:166;anchors_x:157;anchors_y:194}
D{i:11;anchors_height:166;anchors_width:166;anchors_x:157;anchors_y:194}D{i:18;anchors_height:166;anchors_width:166;anchors_x:157;anchors_y:194}
D{i:10;anchors_height:166;anchors_width:166;anchors_x:157;anchors_y:194}D{i:20;anchors_height:166;anchors_width:166;anchors_x:157;anchors_y:194}
D{i:22;anchors_height:166;anchors_width:166;anchors_x:157;anchors_y:194}D{i:24;anchors_height:166;anchors_width:166;anchors_x:157;anchors_y:194}
D{i:23;anchors_height:166;anchors_width:166;anchors_x:157;anchors_y:194}D{i:21;anchors_height:166;anchors_width:166;anchors_x:157;anchors_y:194}
}
##^##*/
