//  ViewController.swift
//  nectar
//  Created by ashraf on 04/10/2022.

import UIKit

class ViewController: UIViewController {

    @IBOutlet var GetStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GetStartedButton.layer.cornerRadius = 15
        GetStartedButton.layer.masksToBounds = true

        // Do any additional setup after loading the view.
    }

}

