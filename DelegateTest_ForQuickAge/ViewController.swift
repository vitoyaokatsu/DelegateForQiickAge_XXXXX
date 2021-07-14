//
//  ViewController.swift
//  DelegateTest_ForQuickAge
//
//  Created by Katsuhiko Yao on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var iyoButton: UIButton = {
        let button = UIButton()
        button.setTitle("まつもといよ", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(iyoTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var hidekiButton: UIButton = {
        let button = UIButton()
        button.setTitle("西城秀樹", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 52)
        button.addTarget(self, action: #selector(hidekiTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        self.view.addSubview(iyoButton)
        self.view.addSubview(hidekiButton)
        
    }
    
    func generateStrings(birth:String, age:String){
        ageStr = age//"いよは18歳"
        birthDayStr = birth//"2020年生まれ"
        ageInt = 24
    }
}

extension ViewController{
    @objc func iyoTapped(_ sender:UIButton){
        let showResultVC = ShowresultVC()
        generateStrings(birth: "2020年生まれ", age: "いよは18歳")
        present(showResultVC, animated: true, completion: nil)
        
        
    }
    
    @objc func hidekiTapped(_ sender:UIButton){
        let showResultVC = ShowresultVC()
        generateStrings(birth: "1962年生まれ", age: "ひできかんげき")
        present(showResultVC, animated: true, completion: nil)
        
    }
}

