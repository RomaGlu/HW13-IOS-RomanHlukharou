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
    
    var iconImage: UIImageView = {
        let iconImage = UIImageView()
        let image = UIImage()
        iconImage.clipsToBounds = true
        iconImage.layer.cornerRadius = 5
        iconImage.contentMode = .scaleAspectFit
        return iconImage
    }()
    
    var settingLabel: UILabel = {
        let settingLabel = UILabel()
        settingLabel.font = UIFont.systemFont(ofSize: 15)
        return settingLabel
    }()
    
    var settingPlaceholderLabel: UILabel = {
        let settingPlaceholderLabel = UILabel()
        settingPlaceholderLabel.backgroundColor = .systemBackground
        settingPlaceholderLabel.textColor = .lightGray
        settingPlaceholderLabel.numberOfLines = 1
        settingPlaceholderLabel.textAlignment = .left
        return settingPlaceholderLabel
    }()
    
    var notionImage: UIImageView = {
        let notionImage = UIImageView()
        let image = UIImage()
        notionImage.clipsToBounds = true
        notionImage.layer.cornerRadius = 17
        notionImage.image = image
        notionImage.contentMode = .scaleAspectFit
        notionImage.tintColor = .systemRed
        notionImage.backgroundColor = .systemBackground
        notionImage.isHidden = true
        return notionImage
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryView = .none
        self.notionImage.isHidden = true
        self.settingPlaceholderLabel.isHidden = true
    }
    
    func setupHierarchy() {
        contentView.addSubview(iconImage)
        contentView.addSubview(settingLabel)
        contentView.addSubview(settingPlaceholderLabel)
        contentView.addSubview(notionImage)
    }
    
    func setupLayout() {
        
        iconImage.snp.makeConstraints { make in
            make.left.equalTo(contentView.snp.left).offset(6)
            make.top.equalTo(contentView.snp.top).offset(8)
            make.bottom.equalTo(contentView.snp.bottom).offset(-8)
            make.width.equalTo(28)
        }
        
        settingLabel.snp.makeConstraints { make in
            make.left.equalTo(iconImage.snp.right).offset(16)
            make.top.equalTo(contentView.snp.top).offset(5)
            make.bottom.equalTo(contentView.snp.bottom).offset(-3)
            make.width.equalTo(200)
        }
        
        settingPlaceholderLabel.snp.makeConstraints { make in
            make.right.equalTo(contentView.snp.right).offset(-10)
            make.top.equalTo(contentView.snp.top).offset(11)
            make.width.equalTo(113)
        }
        
        notionImage.snp.makeConstraints { make in
            make.right.equalTo(contentView.snp.right).offset(-1)
            make.top.equalTo(contentView.snp.top).offset(5)
            make.bottom.equalTo(contentView.snp.bottom).offset(-5)
            make.width.equalTo(27)
        }
    }
}
