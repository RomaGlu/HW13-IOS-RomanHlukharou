//
//  Model.swift
//  TableView
//
//  Created by Роман Глухарев on 29/06/2023.
//

import UIKit

enum Blocks: String {
    case connection = "Connection"
    case notions = "Notions"
    case general = "General"
    case appStore = "App Store"
    case passwords = "Passwords"
    case music = "Music"
    case tvProvider = "TV provider"
    case applications = "Applications"
}

struct Settings: Hashable {
    var icon: UIImage
    var name: String
    var bloc: Blocks
}

extension Settings {
    static var settings: [[Settings]] = [
        //Connection
        [Settings(icon: UIImage(named: "person1")!, name: "Airplane Mode", bloc: .connection),
         Settings(icon: UIImage(named: "person1")!, name: "Wi-Fi", bloc: .connection),
         Settings(icon: UIImage(named: "person1")!, name: "Bluetooth", bloc: .connection),
         Settings(icon: UIImage(named: "person1")!, name: "Mobile Data", bloc: .connection),
         Settings(icon: UIImage(named: "person1")!, name: "Personal Hotspot", bloc: .connection),
         Settings(icon: UIImage(named: "person1")!, name: "VPN", bloc: .connection)
        ],
        //Notions
        [
         Settings(icon: UIImage(named: "person1")!, name: "Notifications", bloc: .notions),
         Settings(icon: UIImage(named: "person1")!, name: "Sounds & Haptics", bloc: .notions),
         Settings(icon: UIImage(named: "person1")!, name: "Focus", bloc: .notions),
         Settings(icon: UIImage(named: "person1")!, name: "Screen time", bloc: .notions)
        ],
        //General
        [Settings(icon: UIImage(named: "person1")!, name: "General", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Control Center", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Display & Brightness", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Home Screen", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Accessibility", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Wallaper", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Siri & Search", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Face ID & Passcode", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Emergency SOS", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Exposure Notifications", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Battery", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Privacy & Security", bloc: .general)
        ],
        //App Store
        [Settings(icon: UIImage(named: "person1")!, name: "App Store", bloc: .appStore),
         Settings(icon: UIImage(named: "person1")!, name: "Wallet & Apple Pay", bloc: .appStore)
         ],
        //IOS
        [Settings(icon: UIImage(named: "person1")!, name: "Passwords", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Mail", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Contscts", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Calendar", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Notes", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Reminders", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Freeform", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Voice Memos", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Phone", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Messages", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "FaceTime", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Safari", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Stocks", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Weather", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Translate", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Maps", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Compass", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Measure", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Shortcuts", bloc: .general),
         Settings(icon: UIImage(named: "person1")!, name: "Health", bloc: .general)
        ],
        //Music
        [Settings(icon: UIImage(named: "person1")!, name: "Music", bloc: .music),
         Settings(icon: UIImage(named: "person1")!, name: "TV", bloc: .music),
         Settings(icon: UIImage(named: "person1")!, name: "Photos", bloc: .music),
         Settings(icon: UIImage(named: "person1")!, name: "Camera", bloc: .music),
         Settings(icon: UIImage(named: "person1")!, name: "Books", bloc: .music),
         Settings(icon: UIImage(named: "person1")!, name: "Podcasts", bloc: .music),
         Settings(icon: UIImage(named: "person1")!, name: "iTunes U", bloc: .music),
         Settings(icon: UIImage(named: "person1")!, name: "Game Center", bloc: .music)
        ],
        //TV Provider
        [Settings(icon: UIImage(named: "person1")!, name: "TV Provider", bloc: .tvProvider)],
        //Applications
        [Settings(icon: UIImage(named: "person1")!, name: "Yandex Go", bloc: .applications),
         Settings(icon: UIImage(named: "person1")!, name: "McDonald's", bloc: .applications),
         Settings(icon: UIImage(named: "person1")!, name: "Instagram", bloc: .applications),
         Settings(icon: UIImage(named: "person1")!, name: "Spotify", bloc: .applications),
         Settings(icon: UIImage(named: "person1")!, name: "Discord", bloc: .applications),
         Settings(icon: UIImage(named: "person1")!, name: "365Scores", bloc: .applications)]
    ]
}
