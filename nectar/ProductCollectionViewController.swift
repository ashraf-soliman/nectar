//
//  ProductCollectionViewController.swift
//  nectar
//
//  Created by ashraf on 10/10/2022.
//

import UIKit

class ProductCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet var productCollection: UICollectionView!
    
    struct product {
        var imageName: String
        var label: String
        var caption: String
        var price: String
    }
    
    let products: [product] = [
        product(imageName: "CanCoke", label: "Cocacola", caption: "Can of Coke", price: "$3.00"),
        product(imageName: "CanPepsi", label: "Pepsi", caption: "Can of Pepsi", price: "$3.00"),
        product(imageName: "CanJuice", label: "Grapes Juice", caption: "Bottle of Juice", price: "$3.00"),
        product(imageName: "CanSprite", label: "Sprite", caption: "Can of Sprite", price: "$3.00"),
        product(imageName: "CanCoke", label: "Cocacola", caption: "Can of Coke", price: "$3.00"),
        product(imageName: "CanPepsi", label: "Pepsi", caption: "Can of Pepsi", price: "$3.00"),
        product(imageName: "CanJuice", label: "Grapes Juice", caption: "Bottle of Juice", price: "$3.00"),
        product(imageName: "CanSprite", label: "Sprite", caption: "Can of Sprite", price: "$3.00"),
        product(imageName: "CanCoke", label: "Cocacola", caption: "Can of Coke", price: "$3.00"),
        product(imageName: "CanPepsi", label: "Pepsi", caption: "Can of Pepsi", price: "$3.00"),
        product(imageName: "CanJuice", label: "Grapes Juice", caption: "Bottle of Juice", price: "$3.00"),
        product(imageName: "CanSprite", label: "Sprite", caption: "Can of Sprite", price: "$3.00"),
        product(imageName: "CanCoke", label: "Cocacola", caption: "Can of Coke", price: "$3.00"),
        product(imageName: "CanPepsi", label: "Pepsi", caption: "Can of Pepsi", price: "$3.00"),
        product(imageName: "CanJuice", label: "Grapes Juice", caption: "Bottle of Juice", price: "$3.00"),
        product(imageName: "CanSprite", label: "Sprite", caption: "Can of Sprite", price: "$3.00"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.dataSource = self
        productCollection.delegate = self
    }


    // MARK: UICollectionViewDataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellData = products[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductCollectionCell
        
        cell.productImage.image = UIImage(named: cellData.imageName)
        cell.label.text = cellData.label
        cell.caption.text = cellData.caption
        cell.price.text = cellData.price
        cell.backgroundColor = .init(cgColor: CGColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 0.1))
        cell.layer.cornerRadius = 15
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.475, height: self.view.frame.height * 0.25   )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
}
