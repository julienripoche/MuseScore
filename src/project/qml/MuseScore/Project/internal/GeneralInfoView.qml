/*
 * SPDX-License-Identifier: GPL-3.0-only
 * MuseScore-CLA-applies
 *
 * MuseScore
 * Music Composition & Notation
 *
 * Copyright (C) 2021 MuseScore BVBA and others
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import MuseScore.Ui 1.0
import MuseScore.UiComponents 1.0
import MuseScore.Project 1.0

Column {
    id: root

    property alias title: titleInfo.info
    property alias subtitle: subtitleInfo.info
    property alias composer: composerInfo.info
    property alias lyricist: lyricistInfo.info
    property alias copyright: copyrightInfo.info

    spacing: 20

    property alias navigationPanel: navPanel

    NavigationPanel {
        id: navPanel
        name: "NavPanel"
        direction: NavigationPanel.Horizontal
        enabled: root.visible
        accessible.name: qsTrc("project", "Score general info")
    }

    Row {
        anchors.left: parent.left
        anchors.right: parent.right

        height: 60

        property real childWidth: (width - spacing) / 2

        spacing: 20

        GeneralInfoItem {
            id: titleInfo

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.childWidth

            title: qsTrc("project", "Title")

            navigation.panel: root.navigationPanel
            navigation.column: 0
        }
        GeneralInfoItem {
            id: composerInfo

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.childWidth

            title: qsTrc("project", "Composer")

            navigation.panel: root.navigationPanel
            navigation.column: 1
        }
    }

    Row {
        anchors.left: parent.left
        anchors.right: parent.right

        height: 60

        property real childWidth: (width - (spacing * 2)) / 3

        spacing: 20

        GeneralInfoItem {
            id: subtitleInfo

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.childWidth

            title: qsTrc("project", "Subtitle")

            navigation.panel: root.navigationPanel
            navigation.column: 2
        }

        GeneralInfoItem {
            id: lyricistInfo

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.childWidth

            title: qsTrc("project", "Lyricist")

            navigation.panel: root.navigationPanel
            navigation.column: 3
        }

        GeneralInfoItem {
            id: copyrightInfo

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.childWidth

            title: qsTrc("project", "Copyright")

            navigation.panel: root.navigationPanel
            navigation.column: 4
        }
    }
}
