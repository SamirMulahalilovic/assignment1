//
//  main.swift
//  HW1
//
//  Created by u0897227 on 1/16/18.
//  Copyright © 2018 u0897227. All rights reserved.
//

import Foundation


var dictItems = [String: Int]()
print("Enter Shopping List Item: (Item, Item + Quantity, or blank if finished)")
if let response = readLine(){
    print("added \(response)!")
} else{
    print("Generating Shopping List")
}



