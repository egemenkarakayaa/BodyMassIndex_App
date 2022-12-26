//
//  ViewController.swift
//  BodyMassIndex_App
//
//  Created by Egemen Karakaya on 23.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let label: UILabel = {
        
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Log In"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        return label
    }()
    
    
    private let emailField: UITextField = {
        
        let emailField = UITextField()
        emailField.placeholder = "Email Address"
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = UIColor.black.cgColor
        return emailField
    }()
    
    
    private let passwordField: UITextField = {
        
        let passField = UITextField()
        passField.placeholder = "Password"
        passField.layer.borderWidth = 1
        passField.isSecureTextEntry = true
        passField.layer.borderColor = UIColor.black.cgColor
        return passField
    }()
    
    
    private let button: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Continue", for: .normal)
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        label.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 80)
        
        emailField.frame = CGRect(x: 20,
                                  y: label.frame.origin.y+label.frame.size.height+10,
                                  width: view.frame.size.width-40,
                                  height: 50)
        
        passwordField .frame = CGRect(x: 20,
                                      y: emailField.frame.origin.y+emailField.frame.size.height+10,
                                      width: view.frame.size.width-40,
                                      height: 50)
        
        button.frame = CGRect(x: 20,
                              y: passwordField.frame.origin.y+passwordField.frame.size.height+30,
                              width: view.frame.size.width-40 ,
          
                              height: 52)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        emailField.becomeFirstResponder()
    }

    
    @objc private func didTapButton() {
        
        print("Continue button tapped")
        
    }
    
    

}
