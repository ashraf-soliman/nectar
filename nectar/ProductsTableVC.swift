//
//  ProductsTableVC.swift
//  nectar
//
//  Created by ashraf on 10/10/2022.
//

import UIKit

class ProductTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var productsTable: UITableView!
    
    struct Product {
        var imageName: String
        var label: String
        var caption: String
        var price: String
    }
    let products: [Product] = [
        Product(imageName: "CanCoke", label: "Coke Can Large Size", caption: "330000000 ml", price: "123.00$"),
        Product(imageName: "CanSprite", label: "Sprite Can", caption: "330 ml", price: "3.50$"),
        Product(imageName: "CanJuice", label: "Juice Bottle", caption: "800 ml", price: "4.00$"),
        Product(imageName: "CanPepsi", label: "Pepsi Can", caption: "330 ml", price: "2.50$"),
        Product(imageName: "CanCoke", label: "Coke Can", caption: "330 ml", price: "3.00$"),
        Product(imageName: "CanSprite", label: "Sprite Can", caption: "330 ml", price: "3.50$"),
        Product(imageName: "CanJuice", label: "Juice Bottle", caption: "800 ml", price: "4.00$"),
        Product(imageName: "CanPepsi", label: "Pepsi Can", caption: "330 ml", price: "2.50$"),
        Product(imageName: "CanJuice", label: "Juice Bottle", caption: "800 ml", price: "4.00$"),
        Product(imageName: "CanPepsi", label: "Pepsi Can", caption: "330 ml", price: "2.50$"),
        Product(imageName: "CanCoke", label: "Coke Can", caption: "330 ml", price: "3.00$"),
        Product(imageName: "CanSprite", label: "Sprite Can", caption: "330 ml", price: "3.50$"),
        Product(imageName: "CanJuice", label: "Juice Bottle", caption: "800 ml", price: "4.00$"),
        Product(imageName: "CanPepsi", label: "Pepsi Can", caption: "330 ml", price: "2.50$")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsTable.dataSource = self
        productsTable.delegate   = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellData = products[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductsTableViewCell
        
        cell.productImage.image  = UIImage(named: cellData.imageName)
        cell.productLabel.text   = cellData.label
        cell.productCaption.text = cellData.caption
        cell.price.text         = cellData.price
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Products"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
