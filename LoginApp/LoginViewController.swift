//
//  ViewController.swift
//  LoginApp
//
//  Created by Olga Tegza on 06.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    let correctName = "User"
    let correctPassword = "12345"

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func loginButtonTapped() {
        
        if userNameTF.text == correctName && passwordTF.text == correctPassword {
            performSegue(withIdentifier: "goToWelcomeSegue", sender: nil)
        } else {
            userNameTF.text = ""
            passwordTF.text = ""
            showAlert(
                withtitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert(
            withtitle: "Oops!",
            andMessage: "Your name is User"
        )
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(
            withtitle: "Oops!",
            andMessage: "Your password is 12345"
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(withtitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default
        )
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

