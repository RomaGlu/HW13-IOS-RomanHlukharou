//
//  DetailViewController.swift
//  HW13-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 02/07/2023.
//

import UIKit
import SnapKit

protocol DataTransferDelegate: AnyObject {
    func didSelectData(_ data: Settings)
}

class DetailViewController: UIViewController {
    
    // MARK: - Proprties
    
    var setting: Settings? {
        didSet {
            detailView.settingNameLabel.text = setting?.name
        }
    }
    
    private var settings: [[Settings]]?
    let detailView = DetailView()
    weak var delegate: DataTransferDelegate?
    
    
    
    // MARK: - Lyfecycle
    
    override func loadView() {
        super.loadView()
        view = detailView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detail description"
        settings = SettingsModel().createModel()
    }
    
    //MARK: - Configuration
    
    func configureView(with model: Settings) {
        detailView.settingNameLabel.text = model.name
        
        if UIImage(named: model.icon) != nil {
            detailView.settingImage.image = UIImage(named: model.icon)
        } else {
            detailView.settingImage.image = UIImage(systemName: model.icon)
        }
        
        detailView.settingBlocLabel.text = model.bloc.rawValue
    }
}

extension DetailViewController: DataTransferDelegate {
    
    func didSelectData(_ data: Settings) {
        
        delegate?.didSelectData(data)
        
    }
}
