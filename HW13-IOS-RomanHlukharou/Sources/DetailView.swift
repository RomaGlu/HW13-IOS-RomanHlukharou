//
//  DetailView.swift
//  HW13-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 26/07/2023.
//

import UIKit
import SnapKit

class DetailView: UIView {
    
    // MARK: - Outlets
    
    lazy var settingImage: UIImageView = {
        let settingImage = UIImageView()
        let image = UIImage()
        settingImage.clipsToBounds = true
        settingImage.layer.cornerRadius = 125
        settingImage.image = image
        return settingImage
    }()
    
    lazy var settingNameLabel: UILabel = {
        let settingNameLabel = UILabel()
        settingNameLabel.font = UIFont.boldSystemFont(ofSize: 25)
        settingNameLabel.textAlignment = .center
        return settingNameLabel
    }()
    
    lazy var settingBlocLabel: UILabel = {
        let settingBlocLabel = UILabel()
        settingBlocLabel.textColor = .darkGray
        settingBlocLabel.font = UIFont.systemFont(ofSize: 14)
        settingBlocLabel.textAlignment = .center
        return settingBlocLabel
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
        addSubview(settingImage)
        addSubview(settingNameLabel)
        addSubview(settingBlocLabel)
    }
    
    
    func setupLayout() {
        settingImage.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(150)
            make.left.equalTo(self.snp.left).offset(30)
            make.right.equalTo(self.snp.right).offset(-30)
            make.height.equalTo(300)
        }
        
        settingNameLabel.snp.makeConstraints { make in
            make.top.equalTo(settingImage.snp.bottom).offset(20)
            make.left.equalTo(self.snp.left).offset(60)
            make.right.equalTo(self.snp.right).offset(-60)
            make.height.equalTo(30)
        }
        
        settingBlocLabel.snp.makeConstraints { make in
            make.top.equalTo(settingNameLabel.snp.bottom).offset(8)
            make.left.equalTo(self.snp.left).offset(20)
            make.right.equalTo(self.snp.right).offset(-20)
            make.height.equalTo(20)
        }
    }
}
