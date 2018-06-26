//
//  main.swift
//  HW-2
//
//  Created by Eldor Makkambayev on 26.06.2018.
//  Copyright © 2018 Eldor Makkambayev. All rights reserved.
//

import Foundation
var products = Products()
var cart = Cart()

print("What is your name?")
let myName = readLine()
print("Hi, \(myName!)")
print("Enter your balance: ")
var balance = readLine()
var newBalance = 0
products.printProductList()
cart.printProduct()
