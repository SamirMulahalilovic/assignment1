//
//  main.swift
//  HW1
//
//  Created by u0897227 on 1/16/18.
//  Copyright © 2018 u0897227. All rights reserved.
//

import Foundation

var flag = false
var dictItems = [String: Int]()
print("Enter Shopping List Item: (Item, Item: Quantity, or blank if finished)")
while(!flag){
    if let response = readLine(){
        if(!response.isEmpty){
            var twoParts = response.components(separatedBy: ": ")
            var quantity = 0
            if (twoParts.count == 1)
            {
                quantity = 1
            }
            else{
                quantity = Int(twoParts[1])!
            }
            twoParts[0] = twoParts[0].lowercased()
            if let item = dictItems[twoParts[0]] {
                dictItems[twoParts[0]] = item + quantity
            }
            else {
                dictItems[twoParts[0]] = quantity
            }
        }
        else{
            flag = true
            print("finalizing list")
            for (k,v) in Array(dictItems).sorted(by: <){
                print("\(k): \(v)")
            }
        }
    }
}



