//
//  Model.swift
//  TableView
//
//  Created by Роман Глухарев on 29/06/2023.
//

import Foundation

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
    var icon: String
    var name: String
    var bloc: Blocks
}

protocol DataManager {
    func createModel() -> [[Settings]]
}

final class SettingsModel: DataManager {
    
    func createModel() -> [[Settings]] {
        return [
            
            //Connection
            [Settings(icon: "airplane", name: "Airplane Mode", bloc: .connection),
             Settings(icon: "wifi", name: "Wi-Fi", bloc: .connection),
             Settings(icon: "bluetooth", name: "Bluetooth", bloc: .connection),
             Settings(icon: "antenna.radiowaves.left.and.right", name: "Mobile Data", bloc: .connection),
             Settings(icon: "hotspot", name: "Personal Hotspot", bloc: .connection),
             Settings(icon: "vpn", name: "VPN", bloc: .connection)
            ],
            
            //Notions
            [
                Settings(icon: "bell.badge.fill", name: "Notifications", bloc: .notions),
                Settings(icon: "speaker.wave.3", name: "Sounds & Haptics", bloc: .notions),
                Settings(icon: "focus", name: "Focus", bloc: .notions),
                Settings(icon: "screentime", name: "Screen time", bloc: .notions)
            ],
            
            //General
            [Settings(icon: "general", name: "General", bloc: .general),
             Settings(icon: "control", name: "Control Center", bloc: .general),
             Settings(icon: "textformat.size", name: "Display & Brightness", bloc: .general),
             Settings(icon: "apps.iphone", name: "Home Screen", bloc: .general),
             Settings(icon: "figure.walk.circle", name: "Accessibility", bloc: .general),
             Settings(icon: "wallpaper", name: "Wallpaper", bloc: .general),
             Settings(icon: "siri", name: "Siri & Search", bloc: .general),
             Settings(icon: "faceid", name: "Face ID & Passcode", bloc: .general),
             Settings(icon: "sos", name: "Emergency SOS", bloc: .general),
             Settings(icon: "virus", name: "Exposure Notifications", bloc: .general),
             Settings(icon: "minus.plus.batteryblock", name: "Battery", bloc: .general),
             Settings(icon: "hand.raised.fill", name: "Privacy & Security", bloc: .general)
            ],
            
            //App Store
            [Settings(icon: "appstore", name: "App Store", bloc: .appStore),
             Settings(icon: "wallet", name: "Wallet & Apple Pay", bloc: .appStore)
            ],
            
            //Passwords
            [Settings(icon: "key.fill", name: "Passwords", bloc: .general),
             Settings(icon: "envelope.fill", name: "Mail", bloc: .general),
             Settings(icon: "contacts", name: "Contacts", bloc: .general),
             Settings(icon: "calendar", name: "Calendar", bloc: .general),
             Settings(icon: "note.text", name: "Notes", bloc: .general),
             Settings(icon: "reminders", name: "Reminders", bloc: .general),
             Settings(icon: "voice", name: "Voice Memos", bloc: .general),
             Settings(icon: "phone.fill", name: "Phone", bloc: .general),
             Settings(icon: "message.fill", name: "Messages", bloc: .general),
             Settings(icon: "video.fill", name: "FaceTime", bloc: .general),
             Settings(icon: "safari", name: "Safari", bloc: .general),
             Settings(icon: "stocks", name: "Stocks", bloc: .general),
             Settings(icon: "weather", name: "Weather", bloc: .general),
             Settings(icon: "translate", name: "Translate", bloc: .general),
             Settings(icon: "maps", name: "Maps", bloc: .general),
             Settings(icon: "compass", name: "Compass", bloc: .general),
             Settings(icon: "measure", name: "Measure", bloc: .general),
             Settings(icon: "shortcuts", name: "Shortcuts", bloc: .general),
             Settings(icon: "health", name: "Health", bloc: .general)
            ],
            
            //Music
            [Settings(icon: "music", name: "Music", bloc: .music),
             Settings(icon: "appleTV", name: "TV", bloc: .music),
             Settings(icon: "photos", name: "Photos", bloc: .music),
             Settings(icon: "camera", name: "Camera", bloc: .music),
             Settings(icon: "books", name: "Books", bloc: .music),
             Settings(icon: "podcast", name: "Podcasts", bloc: .music),
             Settings(icon: "itunes", name: "iTunes U", bloc: .music),
             Settings(icon: "gamecenter", name: "Game Center", bloc: .music)
            ],
            
            //TV Provider
            [Settings(icon: "cable.connector.horizontal", name: "TV Provider", bloc: .tvProvider)],
            
            //Applications
            [Settings(icon: "yandex", name: "Yandex Go", bloc: .applications),
             Settings(icon: "mcdonalds", name: "McDonald's", bloc: .applications),
             Settings(icon: "instagram", name: "Instagram", bloc: .applications),
             Settings(icon: "spotify", name: "Spotify", bloc: .applications),
             Settings(icon: "discord", name: "Discord", bloc: .applications),
             Settings(icon: "365scores", name: "365Scores", bloc: .applications)]
        ]
    }
}
