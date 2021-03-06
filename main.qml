import QtQuick 2.0
import QtQuick.LocalStorage 2.0
import Ubuntu.Components 0.1

import "storage.js" as Storage
import "javascript.js" as Js


Rectangle {
    id: mainrectangle

    property bool landscape: false

    width: (landscape)? 800: 480
    height: (landscape)? 480: 800

    color: Js.getBackgroundColor()

    Tabs {
        anchors.fill: parent
        ItemStyle.class: "new-tabs"

        selectedTabIndex: 1 // skip the settings page

        SettingsTab {}

        //		Bugged in ubuntu components 0.1
        //		Repeater {
        //			model: ["/", "/r/ubuntuphone"] // should become a function fetching from the database
        //			delegate: SubredditTab {
        //				url: modelData
        //			}
        //		}

        SubredditTab {} // reddit.com
        SubredditTab {url: "/r/all"} // reddit.com/r/all
        SubredditTab {url: "/r/funny"}
        SubredditTab {url: "/r/waterporn"}
    }
}
