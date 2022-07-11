//
//  TextFieldView.swift
//  StateAndDataFlow
//
//  Created by Артур Сахбиев on 09.07.2022.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var name: String

    let titel = "Enter your name..."
    
    var body: some View {
        ZStack{
            TextField(titel, text: $name)
                .multilineTextAlignment(.center)
            HStack{
                Spacer()
                Text("\(name.count)")
                    .foregroundColor(name.count > 2 ? .green : .red)
                    .padding(.trailing)
            }
        }
    }
  
}

struct TextFieldView_Previews: PreviewProvider {
   static var previews: some View {
       TextFieldView(name: .constant(""))
    }
}
