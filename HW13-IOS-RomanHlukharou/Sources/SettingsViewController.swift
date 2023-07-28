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
    let detailViewController = DetailViewController()
    weak var delegate: DataTransferDelegate?
    
    
    // MARK: - Outlets
    
    private var mainView = SettingsView()
    
    // MARK: - Lyfecycle
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settings = SettingsModel().createModel()
        
        setupView()
        viewConfiguration()
        
    }
    
    private func viewConfiguration() {
        mainView.tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        mainView.tableView.dataSource = self
        mainView.tableView.delegate = self
        mainView.tableView.frame = view.bounds
    }
    
    // MARK: - Layout
    
    func setupView() {
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        44
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SettingsModel().createModel().count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsModel().createModel()[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell
        cell?.configureView(with: SettingsModel().createModel()[indexPath.section][indexPath.row])
        cell?.backgroundColor = .systemBackground
        
        return cell ?? UITableViewCell()
    }
}

extension SettingsViewController {
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 && indexPath.row == 0 {
            print("Airplane")
        } else if indexPath.section == 0 && indexPath.row == 5  {
            print("VPN")
        } else {
            viewController.delegate?.didSelectData(SettingsModel().createModel()[indexPath.section][indexPath.row])
            viewController.configureView(with: SettingsModel().createModel()[indexPath.section][indexPath.row])
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}


