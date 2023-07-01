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
        return tableView
    }()
    
    private lazy var airplaneSwitch: UISwitch = {
        let airplaneSwitch = UISwitch()
        return airplaneSwitch
    }()
    
    
    // MARK: - Lyfecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settings = Settings.settings
        view.backgroundColor = .white
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell
        cell?.setting = settings?[indexPath.section][indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        let switchView = UISwitch(frame: .zero)
        switchView.setOn(false, animated: true)
        switchView.tag = indexPath.first ?? 1
        switchView.addTarget(self, action: #selector(self.switchDidChange(_:)), for: .valueChanged)
        cell?.accessoryView = switchView
        return cell ?? UITableViewCell()
    }
    
    @objc func switchDidChange(_ sender: UISwitch) {
        
    }
    
}
