//
//  HobbieInfoViewController.swift
//  AuthorizationForm
//
//  Created by Yaroslav Malygin on 22.10.2024.
//

import UIKit

final class HobbieInfoViewController: UIViewController {
    
    @IBOutlet var learningLabel: UILabel!
    @IBOutlet var sportLabel: UILabel!
    @IBOutlet var travelLabel: UILabel!
    @IBOutlet var cookingLabel: UILabel!
    @IBOutlet var animalLabel: UILabel!
    
    var learning: String!
    var sport: String!
    var travel: String!
    var cooking: String!
    var animal: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()
        learningLabel.text = learning
        sportLabel.text = sport
        travelLabel.text = travel
        cookingLabel.text = cooking
        animalLabel.text = animal
    }
}
