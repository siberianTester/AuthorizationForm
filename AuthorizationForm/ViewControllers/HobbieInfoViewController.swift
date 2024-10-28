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
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()
        learningLabel.text = user.person.learning
        sportLabel.text = user.person.sport
        travelLabel.text = user.person.travel
        cookingLabel.text = user.person.cooking
        animalLabel.text = user.person.animal
    }
}
