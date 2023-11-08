import SwiftUI
struct MainView: View {
    @ObservedObject var mystory: myStory
    @State var searchString: String = ""
    @State var showingPopover = false
    @State private var selectedView: String? = nil
    @State private var PersonajeButtonP = false
    @State private var llegadaHernanButtonP = false
    @EnvironmentObject var viewRouter: ViewRouter
    
    //Variables de bloqueo
    @State private var isHernanViewUnlocked = false
    var body: some View {
        NavigationView {
            List {
               
                NavigationLink(destination: EscogePersonajeView()){
                    Text("Escoge tu personaje")
                }
                NavigationLink(destination: PersonajeView()){
                    Text("Personaje")
                }
                
                NavigationLink(destination: NavTesting(unlockNextView: $isHernanViewUnlocked), tag: "NavTesting", selection: $viewRouter.selectedView) {
                    Text("Test")
                }
                
                NavigationLink(destination: NavTesting(unlockNextView: $isHernanViewUnlocked), tag: "HernanC", selection: $viewRouter.selectedView) {
                    Text("Llegada de Hernán Cortés")
                }
                .disabled(!isHernanViewUnlocked)
             
               

              
       

                
                Button("Notas") {
                    self.selectedView = "Notes"
                }
                .buttonStyle(PlainButtonStyle())
        
          
            }
            .listStyle(SidebarListStyle())
      
            .frame(minWidth: 200, idealWidth: 250, maxWidth: 300, maxHeight: .infinity)
            .navigationTitle("Nueva Aventura")
      
            .navigationViewStyle(DoubleColumnNavigationViewStyle())

            // Vista que se mostrará al seleccionar un botón
            if let selectedView = selectedView {
                switch selectedView {
                case "Escoge tu Personaje":
                    EscogePersonajeView()
                case "Personaje":
                    PersonajeView()
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
    
    
    

