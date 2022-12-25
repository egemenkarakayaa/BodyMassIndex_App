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
    
   /* private let label:  UITextField = {
        
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Log In"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        return label
    }()
    
    private let label: UIButton = {
        
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Log In"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        return label
    }()
    
*/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
    }


    
    
}
