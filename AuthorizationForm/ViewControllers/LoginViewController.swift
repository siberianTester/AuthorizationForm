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
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        userNameTextField.text = user.userName
        passwordTextField.text = user.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.userName, passwordTextField.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter your correct login and password") {
                self.passwordTextField.text = ""
            }
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutMeVC = navigationVC.topViewController as? AboutMeViewController
                aboutMeVC?.user = user
            }
        }
    }
    
    @IBAction func forgotButtonAction() {
        if forgotNameButton.isTouchInside {
            showAlert(withTitle: "Oops!", andMessage: "Your name is '\(user.userName)' 😉")
        } else {
            showAlert(withTitle: "Oops!", andMessage: "Your password is '\(user.password)' 😉")
        }
    }
    
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        completion: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
// Метод очищает инпуты формы авторизации при возврате пользователя на экран авторизации. Пока не удаляю
//    private func unwind(for segue: UIStoryboardSegue) {
//        userNameTextField.text = ""
//        passwordTextField.text = ""
//    }
}

