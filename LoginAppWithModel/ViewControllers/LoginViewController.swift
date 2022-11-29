//
//  ViewController.swift
//  LoginApp
//
//  Created by Olga Tegza on 06.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    let correctName = User.getUser().login
    let correctPassword = User.getUser().password
    
    let user = User.getUser()
    
    //MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationController = viewController as? UINavigationController {
                if let profileVC = navigationController.topViewController as? WelcomeViewController {
                    profileVC.user = user
                    profileVC.navigationItem.backButtonTitle = "Back"
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - IBAction
    @IBAction func loginButtonTapped() {
        
        if userNameTF.text == correctName && passwordTF.text == correctPassword {
            performSegue(withIdentifier: "goToWelcomeSegue", sender: nil)
        } else {
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
}

//MARK: - extension UIAlertController
extension LoginViewController {
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
