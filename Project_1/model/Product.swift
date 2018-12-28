//
//  Product.swift
//  Project_1
//
//  Created by Dharmendra Pratap Singh on 28/12/18.
//  Copyright © 2018 Dharmendra Pratap Singh. All rights reserved.
//

import Foundation

struct Product {
    var name: String
    var cellImageName: String
    var fullScreenImageName: String
    
    mutating func setProductData(name: String, thumbImage: String, fullImage: String) {
        self.name = name
        self.cellImageName = thumbImage
        self.fullScreenImageName = fullImage
    }
    
}
