//
//  LogOutButton.swift
//  StateAndDataFlow
//
//  Created by Артур Сахбиев on 09.07.2022.
//

import SwiftUI

struct LogOutButton: View {
    @EnvironmentObject var user : UserManager
    var body: some View {
        Button("Log Out", action: {user.logOut()})
            .frame(width: 200 , height: 60)
            .background(.yellow)
            .tint(.red)
            .font(.largeTitle)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black , lineWidth: 4))
    }
}


struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
}
}
