import SwiftUI
struct MainView: View {
    @ObservedObject var mystory: myStory
    @State var searchString: String = ""
    @State var showingPopover = false
    @State private var selectedView: String? = nil

    var body: some View {
        NavigationView {
            List {
                // Botón para la vista de sucesos históricos
                Button("1519: Hernán Cortés y la Conquista de México en la Costa de Veracruz") {
                    self.selectedView = "Llegada Hernan"
                }
                .buttonStyle(PlainButtonStyle())

                // Más botones para otras vistas
                Button("Notas") {
                    self.selectedView = "Notes"
                }
                .buttonStyle(PlainButtonStyle())
        
                // ... añadir más botones para otras vistas
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Aventuras por el mundo")
            .frame(minWidth: 200, idealWidth: 250, maxWidth: 300, maxHeight: .infinity)

            // Vista que se mostrará al seleccionar un botón
            if let selectedView = selectedView {
                switch selectedView {
                case "Llegada Hernan":
                    LlegadaHernanView() // Reemplazar con la vista correspondiente
                case "Notes":
                    NotesView() // Reemplazar con la vista correspondiente
                // Agregar otros casos para las diferentes vistas

                default:
                    Text("Vista no encontrada")
                }
            }
        }
        
    }
}


struct NotesView: View {
    var body: some View {
        Text("Tus notas abcd")
    }
}


struct FolderCell: View {
    var name: String
    var body: some View {
        let folder = Folder(name: "Aventuras", notes: [])
        NavigationLink(destination:FolderView(folderName: folder.name, notes:folder.notes)){
            HStack {
                Image(systemName: "folder")
                Text(name)
            }
        }
    }
}

struct CreateNewFolder: View {
    @ObservedObject var mystory: myStory
    @Binding var showingPopover: Bool
    @State var NewFolderName = ""
    init(_ showingPopover: Binding<Bool>, with mystory: myStory){
        self._showingPopover = showingPopover
        self.mystory = mystory
    }
   
    var body: some View {
        TextField("Name", text: $NewFolderName)
        GeometryReader{ geo in
            ZStack{
                RoundedRectangle(cornerRadius: 7)
                    .fill(Color(.systemGray3))
                    .frame(width: 500, height: 500, alignment: .center)
                VStack{
                    Text("New Folder")
                        .font(.headline)
                    Text("Enter a name for this folder")
                        .font(.subheadline)
                    Spacer()
                    TextField("Name", text: $NewFolderName)
                        .foregroundColor(.black)
                        .frame(width:200, height: 10)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(7)
                        .accentColor(.blue)
                    Spacer()
                    Color.gray.frame(width:300, height: CGFloat(1))
                    Spacer()
                    HStack{
                        
                        Button(action: {print("Cancel")}){
                            Text("Cancel")
                                .frame(maxWidth: .infinity)
                        }
                        Button(action: {mystory.folders.append(Folder(name: NewFolderName))
                            showingPopover.toggle()}){
                            
                            Text("Enter")
                                .frame(maxWidth: .infinity)
                            
                        }
                    }
                }
                
                .frame(width:geo.size.width*0.50, height: geo.size.width*0.25)
            }
            .frame(width: 1230 , height: 750, alignment: .center)
        }
        
    }
    
}
struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            let testNotes = myStory()
            testNotes.folders = testFolders
            return MainView(mystory: testNotes)
        }
    }
    
    
    

