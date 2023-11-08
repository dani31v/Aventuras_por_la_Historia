//
//  PersonajeEscogido.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct PersonajeView: View {
    var body: some View {
        VStack{
            Text("El personaje que elegiste fue: Hernán Cortés")
                .font(.system(size: 40))
            Image("Hernan")
                .resizable()
                .frame(width: 500, height: 500)
            
            Button(action: {
                // Acción para el botón de Hernán Cortes
            }) {
                Text("Hernán Cortes")
                    .padding()
                    .background(Color.colorH)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
        
    }
}

