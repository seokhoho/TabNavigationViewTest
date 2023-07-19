//
//  ViewController.swift
//  TabNavigationViewTest
//
//  Created by 정유진 on 2023/07/19.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    //아이템을 선언
    var label: UILabel = {
        let temp = UILabel()
        temp.text = "0"
        temp.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        return temp
    }()
    

    
    var onePlusButton: UIButton = {
        let button = UIButton(configuration: .plain())
        button.setTitle("+1", for: .normal)
        
        button.backgroundColor = .green
        button.setTitleColor(.yellow, for: .normal)
        button.tintColor = .red
        
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //뷰의 바탕
        view.backgroundColor = .systemBackground
        
        title = "First"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        [label, onePlusButton].forEach { item in
            view.addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
        
            //라벨
            label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            
            //버튼
            onePlusButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100),
            onePlusButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        
        ])
        
        onePlusButton.addTarget(self, action: #selector(onePlus), for: .touchUpInside)
        
        
    }
    
    @objc func onePlus() {
        guard let labelNum = Int(label.text!) else { return }
        
        let result: Int = labelNum + 1
        
        label.text = String(result)
    }
    
    
    

}

