//
//  AddContactVC.swift
//  ContactApp
//
//  Created by user230806 on 12/11/22.
//

import UIKit

class AddContactVC: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    @IBOutlet weak var txtPhoneNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

  
    @IBAction func onClickAdd(_ sender: Any) {
        if let firstName = txtFirstName.text, let lastName = txtLastName.text, let phoneNumber = txtPhoneNumber.text{
            let newContact = Contact(context: DBManger.share.context)
            newContact.firstName = firstName
            newContact.lastName = lastName
            newContact.phoneNumber = phoneNumber
            DBManger.share.saveContext()
        }
    }
    
}
