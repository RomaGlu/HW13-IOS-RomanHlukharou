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
    
    // MARK: - Initializators
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryView = .none
        self.notionImage.isHidden = true
        self.settingPlaceholderLabel.isHidden = true
    }
    
    // MARK: - Layout
    
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
    
    // MARK: - Configuration
    
    func configureView(with model: Settings) {
        settingLabel.text = model.name
        
        if UIImage(named: model.icon) != nil {
            self.iconImage.image = UIImage(named: model.icon)
        } else {
            self.iconImage.image = UIImage(systemName: model.icon)
        }
        
        if self.settingLabel.text == "Wi-Fi" {
            self.settingPlaceholderLabel.text = "Not connected"
            self.settingPlaceholderLabel.isHidden = false
            self.iconImage.backgroundColor = .systemBlue
        } else if self.settingLabel.text == "Bluetooth" {
            self.settingPlaceholderLabel.isHidden = false
            self.settingPlaceholderLabel.text = "Not connected"
            self.iconImage.backgroundColor = .systemBlue
        } else if self.settingLabel.text == "General" {
            self.notionImage.isHidden = false
            self.notionImage.image = UIImage(systemName: "1.circle.fill")
            self.iconImage.backgroundColor = .white
        }  else if self.settingLabel.text == "Mobile Data" {
            self.iconImage.backgroundColor = .systemGreen
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Notifications" {
            self.iconImage.backgroundColor = .systemRed
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Sounds & Haptics" {
            self.iconImage.backgroundColor = .systemPink
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Display & Brightness" {
            self.iconImage.backgroundColor = .systemBlue
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Home Screen" {
            self.iconImage.backgroundColor = .systemBlue
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Accessibility" {
            self.iconImage.backgroundColor = .systemBlue
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Face ID & Passcode" {
            self.iconImage.backgroundColor = .systemGreen
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Emergency SOS" {
            self.iconImage.backgroundColor = .systemRed
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Battery" {
            self.iconImage.backgroundColor = .systemGreen
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Privacy & Security" {
            self.iconImage.backgroundColor = .systemBlue
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Passwords" {
            self.iconImage.backgroundColor = .systemGray
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Mail" {
            self.iconImage.backgroundColor = .systemBlue
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Calendar" {
            self.iconImage.backgroundColor = .systemOrange
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Notes" {
            self.iconImage.backgroundColor = .systemYellow
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Phone" {
            self.iconImage.backgroundColor = .systemGreen
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Messages" {
            self.iconImage.backgroundColor = .systemGreen
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "FaceTime" {
            self.iconImage.backgroundColor = .systemGreen
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Safari" {
            self.iconImage.backgroundColor = .systemBlue
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "TV Provider" {
            self.iconImage.backgroundColor = .black
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Wallpaper" {
            self.iconImage.backgroundColor = .systemBlue
            self.iconImage.tintColor = .white
        } else if self.settingLabel.text == "Exposure Notifications" {
            self.iconImage.backgroundColor = .white
            self.iconImage.tintColor = .white
        }
       
        if self.settingLabel.text == "Airplane Mode" {
            let switchView = UISwitch(frame: .zero)
            switchView.setOn(false, animated: true)
            switchView.addTarget(self, action: #selector(self.switchDidChange(_:)), for: .valueChanged)
            switchView.backgroundColor = .systemBackground
            self.accessoryView = switchView
        } else if self.settingLabel.text == "VPN" {
            self.iconImage.backgroundColor = .systemBlue
            let switchView = UISwitch(frame: .zero)
            switchView.setOn(false, animated: true)
            switchView.backgroundColor = .systemBackground
            switchView.addTarget(self, action: #selector(self.switchDidChange(_:)), for: .valueChanged)
            self.accessoryView = switchView
        } else if self.settingLabel.text == "Wallpaper" {
            self.iconImage.backgroundColor = .systemBlue
        } else {
            self.accessoryType = .disclosureIndicator
        }
    }
    
    // MARK: - Actions
    
    @objc func switchDidChange(_ sender: UISwitch) {
        if settingLabel.text == "Airplane Mode" && sender.isOn {
            print("Airplane mode turned on!")
        } else if settingLabel.text == "Airplane Mode" && sender.isOn == false {
            print("Airplane mode turned off!")
        }
        
        if settingLabel.text == "VPN" && sender.isOn {
            print("VPN mode turned on!")
        } else if settingLabel.text == "VPN" && sender.isOn == false {
            print("VPN mode turned off!")
        }
    }
}
