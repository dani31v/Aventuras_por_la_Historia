//
//  myStory.swift
//  book
//
//  Created by Daniela Valencia on 06/11/23.
//

import Foundation

class myStory: ObservableObject {
    @Published var folders = [Folder]()
}

struct Folder: Identifiable{
    var id: UUID  = UUID()
    var name: String
    var notes: [Note] = testNotes
}

struct Note: Identifiable{
    var id = UUID()
    var title: String
    var noteText: String = ""
}

var testFolders = [
    Folder(name: "Folder1"),
    Folder(name: "Folder2")
]

var testNotes = [
    Note(title: "Notes1"),
    Note(title: "Notes2")
]
