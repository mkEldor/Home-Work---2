//
//  Cart.swift
//  HW-2
//
//  Created by Eldor Makkambayev on 26.06.2018.
//  Copyright © 2018 Eldor Makkambayev. All rights reserved.
//

import Foundation

class Cart {
  
  var products: Products!
  var price: Price!
  var cart: [String]!
  var prices = 0
  
  init() {
    
    cart = []
    products = Products()
    price = Price(cart: self)
  }
  
  func printProduct(){
    
    while (true) {
      
      let inputProduct = readLine()
      
      if products.products.contains(where: {$0.key == inputProduct!}) {
        
        prices += products.products[inputProduct!]!
        cart.append(inputProduct!)
      }
      else if inputProduct?.lowercased() == "buy" {
        
        price.printPurchase()
        return
      }else if inputProduct?.lowercased() == "checkout" {
        
        myCart()
      }else if inputProduct?.lowercased() == "count" {
        
        print(cart.count)
      }
    }
  }
  
  
  func returnGoods(){
    
    let goods = readLine()!.lowercased()
    
    if goods == "checkout" {
      myCart()
    }
    
    if let p = products.products[goods] {
      prices -= p
    }
  
    
    price.printPurchase()

  }
  
  func myCart(){
    for i in cart{
      print(i)
    }
  }
}

