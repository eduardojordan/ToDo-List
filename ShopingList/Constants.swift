//
//  Constants.swift
//  ShopingList
//
//  Created by Eduardo on 10/2/18.
//  Copyright © 2018 Eduardo Jordan Muñoz. All rights reserved.
//

import Foundation

var todoList:[String]?

func saveData(todoList:[String]) {
    UserDefaults.standard.set(todoList, forKey: "todoList")
    
}

func fetchdata() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String]{
        return todo
    }else{
        return nil
    }
    
}
