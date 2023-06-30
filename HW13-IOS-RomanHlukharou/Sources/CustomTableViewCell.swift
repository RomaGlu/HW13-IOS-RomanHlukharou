//
//  CustomTableViewCell.swift
//  HW13-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 30/06/2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    // MARK: - Outlets
    
    private lazy var iconImage: UIImageView = {
        let iconImage = UIImageView()
        let image = UIImage()
        iconImage.clipsToBounds = true
        iconImage.layer.cornerRadius = 35
        return iconImage
    }()
    
    private lazy var settingLabel: UILabel = {
       let settingLabel = UILabel()
        settingLabel.font = UIFont.boldSystemFont(ofSize: 20)
        settingLabel.textColor = .black
        return settingLabel
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        setupHierarchy()
        setupLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    
    func setupHierarchy() {
        contentView.addSubview(iconImage)
        contentView.addSubview(settingLabel)
    }
    
    func setupLayout() {
        
    }
    
    // MARK: - Actions
}
