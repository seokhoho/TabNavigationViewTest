//
//  ThirdViewController.swift
//  TabNavigationViewTest
//
//  Created by 정유진 on 2023/07/19.
//

import UIKit

class ThirdViewController: UIViewController {

    var inputNumber: UITextField = {
       
        let textField = UITextField()
        
        textField.placeholder = "섭씨 -> 화씨"
        
        textField.borderStyle = .roundedRect
        return textField
        
    }()
    
    var label: UILabel = {
        let temp = UILabel()
        temp.text = "0"
        temp.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        return temp
    }()
    
    var resultButton: UIButton = {
       
        let button = UIButton(configuration: .plain())
        button.setTitle("화씨로 변환", for: .normal)
        
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .gray
        button.tintColor = .cyan
        
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 5
        
        
        return button
    }()
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        title = "Third"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        
        [inputNumber, label, resultButton].forEach { item in
            
            view.addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
        
            inputNumber.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            inputNumber.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            inputNumber.widthAnchor.constraint(equalToConstant: 200),
            
            
            label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            label.topAnchor.constraint(equalTo: inputNumber.bottomAnchor, constant: 50),
            

            
            resultButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            resultButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 150),
        
        
        ])
        
        
        resultButton.addTarget(self, action: #selector(calcTemp), for: .touchUpInside)
        
        
        
    }
    
    @objc func calcTemp(){
        guard let inputNum = Double(inputNumber.text!) else { return }
        
        let result : Double = inputNum * 1.8 + 32
        
        label.text = String(result) + "°F"
    }
    


}
