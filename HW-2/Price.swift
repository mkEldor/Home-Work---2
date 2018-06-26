//
//  Price.swift
//  HW-2
//
//  Created by Eldor Makkambayev on 26.06.2018.
//  Copyright © 2018 Eldor Makkambayev. All rights reserved.
//

import Foundation

class Price {
//  var check = Check()
  private var cart: Cart!
  private var price = 0
  
  init(cart: Cart) {
    self.cart = cart
  }
  
  func add(price: Int) {
    self.price = price
  }
  
  func printPurchase() {
    
    if (Int(balance!)! >= cart.prices){
      
      print("thank you for your purchase, your change \(Int(balance!)! - cart.prices)")
//      check.chech()
      
    }else if (Int(balance!)! < cart.prices){
      
      print("You do not have enough money to buy. you are missing \(cart.prices - Int(balance!)!) tenge. Return some goods")
      cart.returnGoods()
    }
  }
}
