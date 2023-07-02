//
//  DetailViewController.swift
//  HW13-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 02/07/2023.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {
    
    //    MARK: - Proprties
    
    var setting: Settings? {
        didSet {
            settingImage.image = setting?.icon
            settingNameLabel.text = setting?.name
            settingBlocLabel.text = setting?.bloc.rawValue
        }
    }
    
    // MARK: - Outlets
    
    private lazy var settingImage: UIImageView = {
        let settingImage = UIImageView()
        let image = UIImage()
        settingImage.clipsToBounds = true
        settingImage.layer.cornerRadius = 125
        settingImage.tintColor = .black
        settingImage.image = image
        return settingImage
    }()
    
    private lazy var settingNameLabel: UILabel = {
        let settingNameLabel = UILabel()
        settingNameLabel.font = UIFont.boldSystemFont(ofSize: 25)
        settingNameLabel.textColor = .black
        settingNameLabel.textAlignment = .center
        return settingNameLabel
    }()
    
    private lazy var settingBlocLabel: UILabel = {
        let settingBlocLabel = UILabel()
        settingBlocLabel.textColor = .darkGray
        settingBlocLabel.font = UIFont.systemFont(ofSize: 14)
        settingBlocLabel.textAlignment = .center
        return settingBlocLabel
    }()
    
    // MARK: - Lyfecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Layouts
    
    func setupHierarchy() {
        view.addSubview(settingImage)
        view.addSubview(settingNameLabel)
        view.addSubview(settingBlocLabel)
    }
    
    func setupLayout() {
        settingImage.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(130)
            make.left.equalTo(view.snp.left).offset(30)
            make.right.equalTo(view.snp.right).offset(-30)
            make.height.equalTo(300)
        }
        
        settingNameLabel.snp.makeConstraints { make in
            make.top.equalTo(settingImage.snp.bottom).offset(20)
            make.left.equalTo(view.snp.left).offset(60)
            make.right.equalTo(view.snp.right).offset(-60)
            make.height.equalTo(30)
        }
        
        settingBlocLabel.snp.makeConstraints { make in
            make.top.equalTo(settingNameLabel.snp.bottom).offset(8)
            make.left.equalTo(view.snp.left).offset(60)
            make.right.equalTo(view.snp.right).offset(-60)
            make.height.equalTo(20)
        }
    }
    
    private func fillSettings() {
        settingImage.image = setting?.icon
        settingNameLabel.text = setting?.name
        settingBlocLabel.text = "Эта настройка находится в блоке \(setting?.bloc.rawValue ?? "")."
    }
}

