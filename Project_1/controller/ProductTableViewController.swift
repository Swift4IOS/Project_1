//
//  ProductTableViewController.swift
//  Project_1
//
//  Created by Dharmendra Pratap Singh on 28/12/18.
//  Copyright © 2018 Dharmendra Pratap Singh. All rights reserved.
//

import UIKit

class ProductTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        products = [
            Product(name: "1907 Wall Set", cellImageName: "image-cell1", fullScreenImageName: "phone-fullscreen1"),
            Product(name: "1921 Dial Phone", cellImageName: "image-cell2", fullScreenImageName: "phone-fullscreen2"),
            Product(name: "1937 Desk Set", cellImageName: "image-cell3", fullScreenImageName: "phone-fullscreen3"),
            Product(name: "1984 Moto Portable", cellImageName: "image-cell4", fullScreenImageName: "phone-fullscreen4")
        ]
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 110
    }
    
    
    //MARK: - Datasource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
       
        cell.textLabel?.text = products[indexPath.row].name
        cell.imageView?.image = UIImage(named: products[indexPath.row].cellImageName)
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationCV = segue.destination as! ProductViewController
        if let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell) {
            destinationCV.titleText = products[indexPath.row].name
            destinationCV.imageUrl = products[indexPath.row].fullScreenImageName
        }
        
    }

}
