//
//  SettingsViewController.swift
//  HW13-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 30/06/2023.
//

import UIKit
import SnapKit

class SettingsViewController: UIViewController {
    
    // MARK: - Properties
    private var settings: [[Settings]]?
    
    // MARK: - Outlets
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .systemBackground
        return tableView
    }()
    
    // MARK: - Lyfecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settings = Settings.settings
        view.backgroundColor = .systemBackground
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Layout
    
    func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    func setupLayout() {
        
        tableView.snp.makeConstraints { make in
            make.top.left.bottom.right.equalTo(view)
        }
    }
}

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        44
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings?[section].count ?? 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0 && indexPath.row == 0 {
            print("")
        } else if indexPath.section == 0 && indexPath.row == 5  {
            print("")
        } else {
            viewController.setting = settings?[indexPath.section][indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell
        cell?.setting = settings?[indexPath.section][indexPath.row]
        cell?.backgroundColor = .systemBackground
        
        if cell?.settingLabel.text == "Wi-Fi" {
            cell?.settingPlaceholderLabel.text = "Not connected"
            cell?.settingPlaceholderLabel.isHidden = false
            cell?.iconImage.backgroundColor = .systemBlue
        } else if cell?.settingLabel.text == "Bluetooth" {
            cell?.settingPlaceholderLabel.isHidden = false
            cell?.settingPlaceholderLabel.text = "Not connected"
            cell?.iconImage.backgroundColor = .systemBlue
        } else if cell?.settingLabel.text == "General" {
            cell?.notionImage.isHidden = false
            cell?.notionImage.image = UIImage(systemName: "1.circle.fill")
            cell?.iconImage.backgroundColor = .white
        }  else if cell?.settingLabel.text == "Mobile Data" {
            cell?.iconImage.backgroundColor = .systemGreen
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Notifications" {
            cell?.iconImage.backgroundColor = .systemRed
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Sounds & Haptics" {
            cell?.iconImage.backgroundColor = .systemPink
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Display & Brightness" {
            cell?.iconImage.backgroundColor = .systemBlue
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Home Screen" {
            cell?.iconImage.backgroundColor = .systemBlue
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Accessibility" {
            cell?.iconImage.backgroundColor = .systemBlue
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Face ID & Passcode" {
            cell?.iconImage.backgroundColor = .systemGreen
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Emergency SOS" {
            cell?.iconImage.backgroundColor = .systemRed
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Battery" {
            cell?.iconImage.backgroundColor = .systemGreen
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Privacy & Security" {
            cell?.iconImage.backgroundColor = .systemBlue
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Passwords" {
            cell?.iconImage.backgroundColor = .systemGray
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Mail" {
            cell?.iconImage.backgroundColor = .systemBlue
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Calendar" {
            cell?.iconImage.backgroundColor = .systemOrange
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Notes" {
            cell?.iconImage.backgroundColor = .systemYellow
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Phone" {
            cell?.iconImage.backgroundColor = .systemGreen
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Messages" {
            cell?.iconImage.backgroundColor = .systemGreen
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "FaceTime" {
            cell?.iconImage.backgroundColor = .systemGreen
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Safari" {
            cell?.iconImage.backgroundColor = .systemBlue
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "TV Provider" {
            cell?.iconImage.backgroundColor = .black
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Wallpaper" {
            cell?.iconImage.backgroundColor = .systemBlue
            cell?.iconImage.tintColor = .white
        } else if cell?.settingLabel.text == "Exposure Notifications" {
            cell?.iconImage.backgroundColor = .white
            cell?.iconImage.tintColor = .white
        }
       
        if cell?.settingLabel.text == "Airplane Mode" {
            let switchView = UISwitch(frame: .zero)
            switchView.setOn(false, animated: true)
            switchView.addTarget(self, action: #selector(self.switchDidChange(_:)), for: .valueChanged)
            switchView.backgroundColor = .systemBackground
            cell?.accessoryView = switchView
        } else if cell?.settingLabel.text == "VPN" {
            cell?.iconImage.backgroundColor = .systemBlue
            let switchView = UISwitch(frame: .zero)
            switchView.setOn(false, animated: true)
            switchView.backgroundColor = .systemBackground
            switchView.addTarget(self, action: #selector(self.switchDidChange(_:)), for: .valueChanged)
            cell?.accessoryView = switchView
        } else if cell?.settingLabel.text == "Wallpaper" {
            cell?.iconImage.backgroundColor = .systemBlue
        } else {
            cell?.accessoryType = .disclosureIndicator
        }
        return cell ?? UITableViewCell()
    }
    
    @objc func switchDidChange(_ sender: UISwitch) {}
}
