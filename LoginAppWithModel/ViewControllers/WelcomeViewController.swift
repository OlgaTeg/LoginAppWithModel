//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Olga Tegza on 06.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var user: User!
    
    //MARK: - IBOutlets
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user.person.firstName) \(user.person.lastName)!"
        setGradientLayer()
    }
}

//MARK: - Private func
extension WelcomeViewController {
    
    private func setGradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.frame
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor,
            UIColor.systemPurple.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
