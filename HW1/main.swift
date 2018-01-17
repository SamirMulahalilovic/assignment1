//
//  main.swift
//  HW1
//  User inputs (Item, Item: Quantity, or Blank if finished)
//  Created by u0897227 on 1/16/18.
//  Copyright © 2018 u0897227. All rights reserved.
//

import Foundation

// creates boolean flag
var flag = false
// creates dictionary
var dictItems = [String: Int]()
print("Enter Shopping List Item: (Item, Item: Quantity, or blank if finished)")
while(!flag){
    // grab input
    if let response = readLine(){
        if(!response.isEmpty){
            // seperate name and quantity
            var twoParts = response.components(separatedBy: ": ")
            var quantity = 0
            // if there is no quantity, assume it is suppose to be 1
            if (twoParts.count == 1)
            {
                quantity = 1
            }
            else{
                quantity = Int(twoParts[1])!
            }
            // lowercase the words to match Apple with apple
            if let item = dictItems[twoParts[0]] {
                dictItems[twoParts[0]] = item + quantity
            }
            else {
                dictItems[twoParts[0]] = quantity
            }
        }
        else{
            // end the loop
            flag = true
            print("finalizing list")
            // print out the keys with their quantities in sorted order
            for (k,v) in Array(dictItems).sorted(by: {$0.key.lowercased() < $1.key.lowercased()}){
                print("\(k): \(v)")
            }
        }
    }
}



