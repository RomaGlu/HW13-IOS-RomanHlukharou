//
//  CustomTableViewCell.swift
//  HW13-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 30/06/2023.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    var setting: Settings? {
        didSet {
            iconImage.image = setting?.icon
            settingLabel.text = setting?.name
        }
    }
    
    // MARK: - Outlets
    
    private lazy var iconImage: UIImageView = {
        let iconImage = UIImageView()
        let image = UIImage()
        iconImage.clipsToBounds = true
        iconImage.layer.cornerRadius = 2
        return iconImage
    }()
    
    private lazy var settingLabel: UILabel = {
       let settingLabel = UILabel()
        settingLabel.font = UIFont.systemFont(ofSize: 15)
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
        
        iconImage.snp.makeConstraints { make in
            make.left.equalTo(contentView.snp.left).offset(8)
            make.top.equalTo(contentView.snp.top).offset(8)
            make.bottom.equalTo(contentView.snp.bottom).offset(-8)
            make.width.equalTo(25)
        }
        
        settingLabel.snp.makeConstraints { make in
            make.left.equalTo(iconImage.snp.right).offset(15)
            make.top.equalTo(contentView.snp.top).offset(5)
            make.bottom.equalTo(contentView.snp.bottom).offset(-5)
            make.width.equalTo(250)
        }
    }
    
    // MARK: - Actions
}
