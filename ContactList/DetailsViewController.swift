//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Grigory Don on 19.10.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(contact.name) \(contact.surname)"
        mailLabel.text = "mail: \(contact.mail)"
        phoneLabel.text = "phone: \(contact.phone)"

    }
    
}
