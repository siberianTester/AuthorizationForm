//
//  ViewController.swift
//  AuthorizationForm
//
//  Created by Yaroslav Malygin on 17.10.2024.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var forgotNameButton: UIButton!
    
    private let userName = "admin"
    private let password = "1111"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == userName, passwordTextField.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter your correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = userNameTextField.text
    }
    
    @IBAction func forgotButtonAction() {
        if forgotNameButton.isTouchInside {
            showAlert(withTitle: "Oops!", andMessage: "Your name is '\(userName)' 😉")
        } else {
            showAlert(withTitle: "Oops!", andMessage: "Your password is '\(password)' 😉")
        }
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

