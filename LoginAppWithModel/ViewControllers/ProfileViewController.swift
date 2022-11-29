//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Olga Tegza on 12.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var lifePositionLabel: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientLayer()
        setLabels()
        setImage()
    }
}

//MARK: - Private func
extension ProfileViewController {
    
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

extension ProfileViewController {
    private func setLabels() {
        firstNameLabel.text = Person.getPerson().firstName
        lastNameLabel.text = Person.getPerson().lastName
        ageLabel.text = Person.getPerson().age
        cityLabel.text = Person.getPerson().city
        lifePositionLabel.text = Person.getPerson().lifePosition
    }
    
    private func setImage() {
        imageView.image = UIImage(named: Person.getPerson().image)
        imageView.contentMode = .scaleAspectFill
        imageView.alpha = 0.5
        imageView.layer.cornerRadius = 30
        imageView.clipsToBounds = true
    }
}
