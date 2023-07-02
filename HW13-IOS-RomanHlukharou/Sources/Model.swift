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
        [Settings(icon: UIImage(named: "airplane")!, name: "Airplane Mode", bloc: .connection),
         Settings(icon: UIImage(systemName: "wifi")!, name: "Wi-Fi", bloc: .connection),
         Settings(icon: UIImage(named: "bluetooth")!, name: "Bluetooth", bloc: .connection),
         Settings(icon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, name: "Mobile Data", bloc: .connection),
         Settings(icon: UIImage(named: "hotspot")!, name: "Personal Hotspot", bloc: .connection),
         Settings(icon: UIImage(named: "vpn")!, name: "VPN", bloc: .connection)
        ],
        
        //Notions
        [
            Settings(icon: UIImage(systemName: "bell.badge.fill")!, name: "Notifications", bloc: .notions),
            Settings(icon: UIImage(systemName: "speaker.wave.3")!, name: "Sounds & Haptics", bloc: .notions),
            Settings(icon: UIImage(named: "focus")!, name: "Focus", bloc: .notions),
            Settings(icon: UIImage(named: "screentime")!, name: "Screen time", bloc: .notions)
        ],
        
        //General
        [Settings(icon: UIImage(named: "general")!, name: "General", bloc: .general),
         Settings(icon: UIImage(named: "control")!, name: "Control Center", bloc: .general),
         Settings(icon: UIImage(systemName: "textformat.size")!, name: "Display & Brightness", bloc: .general),
         Settings(icon: UIImage(systemName: "apps.iphone")!, name: "Home Screen", bloc: .general),
         Settings(icon: UIImage(systemName: "figure.walk.circle")!, name: "Accessibility", bloc: .general),
         Settings(icon: UIImage(named: "wallpaper")!, name: "Wallpaper", bloc: .general),
         Settings(icon: UIImage(named: "siri")!, name: "Siri & Search", bloc: .general),
         Settings(icon: UIImage(systemName: "faceid")!, name: "Face ID & Passcode", bloc: .general),
         Settings(icon: UIImage(systemName: "sos")!, name: "Emergency SOS", bloc: .general),
         Settings(icon: UIImage(named: "virus")!, name: "Exposure Notifications", bloc: .general),
         Settings(icon: UIImage(systemName: "minus.plus.batteryblock")!, name: "Battery", bloc: .general),
         Settings(icon: UIImage(systemName: "hand.raised.fill")!, name: "Privacy & Security", bloc: .general)
        ],
        
        //App Store
        [Settings(icon: UIImage(named: "appstore")!, name: "App Store", bloc: .appStore),
         Settings(icon: UIImage(named: "wallet")!, name: "Wallet & Apple Pay", bloc: .appStore)
        ],
        
        //Passwords
        [Settings(icon: UIImage(systemName: "key.fill")!, name: "Passwords", bloc: .general),
         Settings(icon: UIImage(systemName: "envelope.fill")!, name: "Mail", bloc: .general),
         Settings(icon: UIImage(named: "contacts")!, name: "Contacts", bloc: .general),
         Settings(icon: UIImage(systemName: "calendar")!, name: "Calendar", bloc: .general),
         Settings(icon: UIImage(systemName: "note.text")!, name: "Notes", bloc: .general),
         Settings(icon: UIImage(named: "reminders")!, name: "Reminders", bloc: .general),
         Settings(icon: UIImage(named: "voice")!, name: "Voice Memos", bloc: .general),
         Settings(icon: UIImage(systemName: "phone.fill")!, name: "Phone", bloc: .general),
         Settings(icon: UIImage(systemName: "message.fill")!, name: "Messages", bloc: .general),
         Settings(icon: UIImage(systemName: "video.fill")!, name: "FaceTime", bloc: .general),
         Settings(icon: UIImage(systemName: "safari")!, name: "Safari", bloc: .general),
         Settings(icon: UIImage(named: "stocks")!, name: "Stocks", bloc: .general),
         Settings(icon: UIImage(named: "weather")!, name: "Weather", bloc: .general),
         Settings(icon: UIImage(named: "translate")!, name: "Translate", bloc: .general),
         Settings(icon: UIImage(named: "maps")!, name: "Maps", bloc: .general),
         Settings(icon: UIImage(named: "compass")!, name: "Compass", bloc: .general),
         Settings(icon: UIImage(named: "measure")!, name: "Measure", bloc: .general),
         Settings(icon: UIImage(named: "shortcuts")!, name: "Shortcuts", bloc: .general),
         Settings(icon: UIImage(named: "health")!, name: "Health", bloc: .general)
        ],
        
        //Music
        [Settings(icon: UIImage(named: "music")!, name: "Music", bloc: .music),
         Settings(icon: UIImage(named: "appleTV")!, name: "TV", bloc: .music),
         Settings(icon: UIImage(named: "photos")!, name: "Photos", bloc: .music),
         Settings(icon: UIImage(named: "camera")!, name: "Camera", bloc: .music),
         Settings(icon: UIImage(named: "books")!, name: "Books", bloc: .music),
         Settings(icon: UIImage(named: "podcast")!, name: "Podcasts", bloc: .music),
         Settings(icon: UIImage(named: "itunes")!, name: "iTunes U", bloc: .music),
         Settings(icon: UIImage(named: "gamecenter")!, name: "Game Center", bloc: .music)
        ],
        
        //TV Provider
        [Settings(icon: UIImage(systemName: "cable.connector.horizontal")!, name: "TV Provider", bloc: .tvProvider)],
        //Applications
        [Settings(icon: UIImage(named: "yandex")!, name: "Yandex Go", bloc: .applications),
         Settings(icon: UIImage(named: "mcdonalds")!, name: "McDonald's", bloc: .applications),
         Settings(icon: UIImage(named: "instagram")!, name: "Instagram", bloc: .applications),
         Settings(icon: UIImage(named: "spotify")!, name: "Spotify", bloc: .applications),
         Settings(icon: UIImage(named: "discord")!, name: "Discord", bloc: .applications),
         Settings(icon: UIImage(named: "365scores")!, name: "365Scores", bloc: .applications)]
    ]
}
