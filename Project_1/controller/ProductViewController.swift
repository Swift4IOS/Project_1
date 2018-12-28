//
//  ProductViewController.swift
//  Project_1
//
//  Created by Dharmendra Pratap Singh on 28/12/18.
//  Copyright © 2018 Dharmendra Pratap Singh. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var titleText: String = ""
    var imageUrl = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLable.text = titleText
        imageView.image = UIImage(named: imageUrl)
    }
    
    @IBAction func addToCartButtonPressed(_ sender: UIButton) {
        print("Add To Cart")
    }
}
