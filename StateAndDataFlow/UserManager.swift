//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import Foundation
import Combine
import SwiftUI


class UserManager: ObservableObject {
    
    @AppStorage("name") var userName: String?
    
    func save(name: String){
        userName = name
    }
    
    func logOut(){
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
