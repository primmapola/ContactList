//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Grigory Don on 19.10.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var contactList =  Contact.randomContacts

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        contactList.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        
        content.text = contact.name
        content.secondaryText = contact.surname
        
        cell.contentConfiguration = content
        

        return cell
    }


   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? DetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailVC?.contact = contactList[indexPath.row]
    }
    
}
