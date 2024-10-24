//
//  AboutMeViewController.swift
//  AuthorizationForm
//
//  Created by Yaroslav Malygin on 22.10.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {

    @IBOutlet var photoImageView: UIImageView!
    
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    private let person = Person.getPerson()
    
    override func viewDidLayoutSubviews() {
        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()
        firstNameLabel.text = person.firstName
        lastNameLabel.text = person.lastName
        ageLabel.text = String(person.age)
        cityLabel.text = person.city
        companyLabel.text = person.company
        positionLabel.text = person.position
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let hobbieInfoVC = segue.destination as? HobbieInfoViewController
        hobbieInfoVC?.learning = person.learning
        hobbieInfoVC?.sport = person.sport
        hobbieInfoVC?.travel = person.travel
        hobbieInfoVC?.cooking = person.cooking
        hobbieInfoVC?.animal = person.animal
    }
}
