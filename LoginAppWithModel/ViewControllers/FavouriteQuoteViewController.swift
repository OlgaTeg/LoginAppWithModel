//
//  FavouriteQuoteViewController.swift
//  LoginApp
//
//  Created by Olga Tegza on 23.11.2022.
//

import UIKit

class FavouriteQuoteViewController: UIViewController {

    @IBOutlet var favouriteQuoteTextView: UITextView!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGradientLayer()
        setTextView()
        title = "Favourite Quote"
    }
    
    private func setTextView() {
        favouriteQuoteTextView.text = Person.getPerson().favouriteQuote
    }
}

extension FavouriteQuoteViewController {
    
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
