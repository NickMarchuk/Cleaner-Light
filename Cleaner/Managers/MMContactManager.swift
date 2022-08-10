//
//  MMContactManager.swift
//  Cleaner
//
//  Created by Nick M on 10/08/2022.
//

import Foundation
import Contacts

struct MMContactManager{
    
    func getNumberContactsAndDuplicates(_ handler: @escaping (Int, Int) -> Void ){
        
        var numberContacts = 0
        
        let store = CNContactStore()
        let key = [CNContactIdentifierKey as CNKeyDescriptor, CNContactFormatter.descriptorForRequiredKeys(for: .fullName)]
        
        var contacts = [String: [CNContact]]()
        
        do {
            
            try store.enumerateContacts(with: CNContactFetchRequest(keysToFetch: key), usingBlock: { contact, pointer in
                numberContacts += 1
                if let name = CNContactFormatter.string(from: contact, style: .fullName){
                    contacts[name, default: []].append(contact)
                }
            })
            
            let duplicates = contacts.filter { $1.count > 1 }
            handler(numberContacts, duplicates.count)
            
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
}
