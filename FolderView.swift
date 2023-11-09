//
//  FolderView.swift
//  book
//
//  Created by Daniela Valencia on 06/11/23.
//

import SwiftUI

struct FolderView: View {
    var folderName: String
    var notes: [Note]
    var body: some View {
        List {
            ForEach(notes){ note in
                Text("aaaaaaaa")
            }
        }
        .navigationTitle(folderName)
        .listStyle(InsetGroupedListStyle())
        toolbar{
            ToolbarItemGroup(placement: .bottomBar){
                Text("\(notes.count)Note\(notes.count !=  1 ? "s": "")" + "Note")
                Image(systemName: "square.and.pencil")
            }
        }
    }
}

//struct FolderView_Previews: PreviewProvider{
    //static var previews: some View{
      //  FolderView(folderName: "Folder Name")
    //}
//}
