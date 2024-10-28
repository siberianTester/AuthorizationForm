//
//  AboutMeViewController.swift
//  AuthorizationForm
//
//  Created by Yaroslav Malygin on 22.10.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {

    @IBOutlet var photoImage: UIImageView!
    
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    var user: User!
    
    override func viewDidLayoutSubviews() {
        photoImage.layer.cornerRadius = photoImage.frame.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()
        firstNameLabel.text = user.person.firstName
        lastNameLabel.text = user.person.lastName
        ageLabel.text = String(user.person.age)
        cityLabel.text = user.person.city
        companyLabel.text = user.person.company
        positionLabel.text = user.person.position
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let hobbieInfoVC = segue.destination as? HobbieInfoViewController
        hobbieInfoVC?.user = user
    }
}
