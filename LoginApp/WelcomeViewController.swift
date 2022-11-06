//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Olga Tegza on 06.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var userName: String?

    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userName = self.userName else { return }
        welcomeLabel.text = "Welcome \(userName)!"
        setGradientLayer()
    }
    
    @IBAction func logoutButtonTapped() {
        dismiss(animated: true)
    }
    
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
