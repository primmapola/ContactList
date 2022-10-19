//
//  Contact.swift
//  ContactList
//
//  Created by Grigory Don on 19.10.2022.
//

import Foundation

struct Contact {
    var name: String
    var surname: String
    var phone: String
    var mail: String
    
    
    
    static func getContacts() -> [Contact] {
        var contacts = [Contact]()
        for _ in 0...5 {
            let removedName = names.remove(at: Int.random(in: 0...numberOfItems - 1))
            let removedSurname = surnames.remove(at: Int.random(in: 0...numberOfItems - 1))
            let removedPhone = phones.remove(at: Int.random(in: 0...numberOfItems - 1))
            let removedMail = mails.remove(at: Int.random(in: 0...numberOfItems - 1))
            
            let newContact = Contact(name: removedName, surname: removedSurname, phone: removedPhone, mail: removedMail)
            contacts.append(newContact)
            
            numberOfItems -= 1
            
        }
        return contacts
    }
}
