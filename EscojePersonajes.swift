//
//  EscojePersonajes.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct EscojePersonajesView: View {
    var body: some View {
        
        Image("Hernan")
            .resizable()
            .frame(width: 400, height: 400)
            .offset(x: -20, y: -40)
        
        
        Button(action: {

        }) {
            Text("Hernán Cortes")
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 15)
                .stroke(Color .accentColor, lineWidth: 3))
                .frame(width:100, height: 200)
        }
       
    }
}

    

