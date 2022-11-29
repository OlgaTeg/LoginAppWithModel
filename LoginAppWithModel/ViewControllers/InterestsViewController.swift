//
//  InterestsViewController.swift
//  LoginApp
//
//  Created by Olga Tegza on 23.11.2022.
//

import UIKit

class InterestsViewController: UIViewController {

    @IBOutlet var interestsTextView: UITextView!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGradientLayer()
        setTextView()
        title = "Interests"
    }
    
    private func setTextView() {
        interestsTextView.text = Person.getPerson().interests
    }
}

extension InterestsViewController {
    
    private func setGradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.frame
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemMint.cgColor,
            UIColor.systemPurple.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
