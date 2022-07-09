//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Артур Сахбиев on 09.07.2022.
//

import Foundation
import SwiftUI

final class DataManager {
   
   static let shared = DataManager()
    
    @AppStorage("name") var userName: String?
    
    private init() {}
    
    func save(name: String){
        userName = name
    }
    
    func logOff(){
        userName = nil
    }
    
    func getUser() -> String {
        if let name = userName{
            return name
        } else {
            return ""
        }
    }
    
    func checkUser() -> Bool{
        if let _ = userName {
            return true
        } else {
            return false
        }
    }
}
