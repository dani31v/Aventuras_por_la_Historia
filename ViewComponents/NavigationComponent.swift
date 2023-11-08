//
//  NavigationComponent.swift
//  book
//
//  Created by Iñaki Sigüenza on 08/11/23.
//

import SwiftUI

struct NavigationComponent: View {
    @State var vistaADesbloquear: Bool
    @State var destinationView: AnyView
    var body: some View {
        NavigationLink(destination: destinationView(unlockPersonajeView: $vistaADesbloquear)){
            Text("Escoge tu personaje")
        }
    }
}

