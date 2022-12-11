//
//  ViewController.swift
//  ContactApp
//
//  Created by user230806 on 12/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var contacts = [Contact]()
   
    @IBOutlet weak var contactTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        contacts = DBManger.share.fetchContact()
        contactTableView.reloadData()
    }

    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let aContact = contacts[indexPath.row]
        cell.textLabel?.text = aContact.firstName! + " " + aContact.lastName!
        return cell
    }
    
}

