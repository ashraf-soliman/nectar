//  ViewController.swift
//  nectar
//  Created by ashraf on 04/10/2022.

import UIKit

class ViewController: UIViewController {

    @IBOutlet var GetStartedButton: UIButton!
    @IBOutlet var tableView: UITableView!
    
    let options = [
    "Orders",
    "My details",
    "Delivery Address",
    "Payment Methods",
    "Promo Code",
    "Notifications",
    "Help",
    "About"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        GetStartedButton.layer.cornerRadius = 15
//        GetStartedButton.layer.masksToBounds = true

//        tableView.delegate = self
//        tableView.dataSource = self
        
    }

}

//extension ViewController: UITableViewDelegate{
//
//}

//extension ViewController: UITableViewDataSource{
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = options[indexPath.row]
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return options.count
//    }
//}
