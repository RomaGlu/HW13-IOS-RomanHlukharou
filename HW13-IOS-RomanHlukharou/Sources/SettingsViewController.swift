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
    // MARK: - Actions
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
        viewController.setting = settings?[indexPath.section][indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell
        cell?.setting = settings?[indexPath.section][indexPath.row]
        cell?.backgroundColor = .systemBackground
        
        if cell?.settingLabel.text == "Wi-Fi" {
            cell?.settingPlaceholderLabel.text = "Not connected"
        } else if cell?.settingLabel.text == "Bluetooth" {
            cell?.settingPlaceholderLabel.text = "Not connected"
            cell?.iconImage.backgroundColor = .systemBlue
        } else if cell?.settingLabel.text == "General" {
            cell?.notionImage.isHidden = false
            cell?.notionImage.image = UIImage(systemName: "1.circle.fill")
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
