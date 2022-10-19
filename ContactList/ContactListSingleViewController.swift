//
//  ContactListSingleViewController.swift
//  ContactList
//
//  Created by Grigory Don on 19.10.2022.
//

import UIKit

class ContactListSingleViewController: UITableViewController {
    private var contactList = Contact.randomContacts

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactSingle", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        
        content.text = contact.phone
        content.secondaryText = contact.mail
        
        cell.contentConfiguration = content
        

        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = "\(self.contactList[section].name) \(self.contactList[section].surname)"
        return section
    }

}
