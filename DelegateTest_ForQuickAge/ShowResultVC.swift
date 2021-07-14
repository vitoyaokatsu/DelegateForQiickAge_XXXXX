//
//  ShowResultVC.swift
//  DelegateTest_ForQuickAge
//
//  Created by Katsuhiko Yao on 2021/07/14.
//

import Foundation
import UIKit

class ShowresultVC: UIViewController {
    
    lazy var dissmissButton: UIButton = {
        let button = UIButton()
        button.setTitle("dissmiss", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(dissmissTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var showTopVCButton: UIButton = {
        let button = UIButton()
        button.setTitle("showTop", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 52)
        button.addTarget(self, action: #selector(showTopTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var birthdayButton: UIButton = {
        let button = UIButton()
        button.setTitle("BirthDay", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 52)
        button.addTarget(self, action: #selector(birthDay), for: .touchUpInside)
        return button
    }()
    
    lazy var ageButton: UIButton = {
        let button = UIButton()
        button.setTitle("Age", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 400, width: 200, height: 52)
        button.addTarget(self, action: #selector(age), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.view.addSubview(dissmissButton)
        self.view.addSubview(showTopVCButton)
        self.view.addSubview(birthdayButton)
        self.view.addSubview(ageButton)
        
        birthdayButton.setTitle(birthDayStr, for: .normal)
        ageButton.setTitle(ageStr, for: .normal)
        
        
    }
    
}

extension ShowresultVC {
    @objc func dissmissTapped(_ sender:UIButton){
        dismiss(animated: true, completion: nil)
    }
    
    @objc func showTopTapped(_ sender:UIButton){
        let topVC = ViewController()
        present(topVC, animated: true, completion: nil)
        
    }
    
    @objc func birthDay(_ sender:UIButton){
        
    }
    
    @objc func age(_ sender:UIButton){
        
    }
}
