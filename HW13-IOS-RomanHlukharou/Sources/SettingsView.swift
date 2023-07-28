//
//  SettingsView.swift
//  HW13-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 24/07/2023.
//

import UIKit
import SnapKit

class SettingsView: UIView {
    
    // MARK: - Outlets
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .systemBackground
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.clipsToBounds = false
        return tableView
    }()
    
    // MARK: - Initializators
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    
    func setupView() {
        self.backgroundColor = .systemBackground
    }
    
    func setupHierarchy() {
        addSubview(tableView)
    }
    
    func setupLayout() {
        tableView.frame = self.bounds
        tableView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}

