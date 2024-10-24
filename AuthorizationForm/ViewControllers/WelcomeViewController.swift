//
//  WelcomeViewController.swift
//  AuthorizationForm
//
//  Created by Yaroslav Malygin on 18.10.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    var firstName: String!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()
        greeting()
    }
    
    private func greeting() {
        userNameLabel.text = "Welcome, \(userName ?? "")!\n My name is \(firstName ?? "")"
    }
}

extension UIView {
    func setGradient() {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = bounds
        layer.insertSublayer(gradient, at: 0)
    }
}
