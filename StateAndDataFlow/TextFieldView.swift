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
        TextField(titel, text: $name)
            .multilineTextAlignment(.center)
    }
}

//struct TextFieldView_Previews: PreviewProvider {
  //  static var previews: some View {
  //      TextFieldView(name: )
   // }
//}
