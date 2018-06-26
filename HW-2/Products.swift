//
//  Products.swift
//  HW-2
//
//  Created by Eldor Makkambayev on 26.06.2018.
//  Copyright © 2018 Eldor Makkambayev. All rights reserved.
//

import Foundation

class Products{
  var products: [String:Int] = ["banana" : 50,
                                "apple" :120,
                                "cherry" :80,
                                "mango" :100,
                                "pear" :170,
                                "kiwifruit" :200]
  
  var productsArray: Array<String>?
  var produstPriceArray: Array<Int>?
  
  
  init(){
    self.productsArray = Array(products.keys)
    self.produstPriceArray = Array(products.values)
  }
  
  func printProductList(){
    for number in 0..<(productsArray?.count)!{
      print(productsArray![number] + " : ", produstPriceArray![number])
    }
  }
}
