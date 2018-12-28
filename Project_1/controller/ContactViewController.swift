//
//  ViewController.swift
//  Project_1
//
//  Created by Dharmendra Pratap Singh on 28/12/18.
//  Copyright © 2018 Dharmendra Pratap Singh. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    
    @IBOutlet weak var textData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textData.text = "The Object is the real-time entity having some state and behavior. In Java, Object is an instance of the class having the instance variables as the state of the object and the methods as the behavior of the object. The object of a class can be created by using the new keyword."
    }
    
}

