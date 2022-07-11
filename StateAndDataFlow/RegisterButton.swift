//
//  RegisterButton.swift
//  StateAndDataFlow
//
//  Created by Артур Сахбиев on 11.07.2022.
//

import SwiftUI

struct RegisterButton: View {
    @EnvironmentObject var user: UserManager
    @Binding var name: String
    
    var body: some View {
        Button(action: registerUser) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }
        }.disabled(name.count < 3)
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.save(name: name)
        }
    }
}




