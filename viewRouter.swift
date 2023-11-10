//
//  viewRouter.swift
//  book
//
//  Created by Iñaki Sigüenza on 07/11/23.
//

import SwiftUI

class ViewRouter: ObservableObject {
    @Published var selectedView: String? = "WorldView"
    @Published var selectedViewDecision: String? = "WorldView"
}
