//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct RegisterView: View {
   
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
  
    var body: some View {
        VStack {
            TextFieldView(name: $name)
            RegisterButton(name: $name)
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !name.isEmpty {
            user.save(name: name)
        }
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
