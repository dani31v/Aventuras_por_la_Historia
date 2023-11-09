/// `NavigationUnlockComponent` Este Navigationlink lo usamos para desbloquear las vistas en el sidebar segun el usuario avance en la historia
/**
 NavigationLink(destination: PersonajeView(unlockHernanView: $isHernanViewUnlocked), tag: "PersonajeView", selection: $viewRouter.selectedView) {
     Text("🧑‍🦲 Tu personaje")
 }
 .disabled(!isPersonajeViewUnlocked)
 
 - Parametros:
    - destination: A que vista navega si el usuario le da tap
    - unlockPersonajeView: Que vista desbloqueará
    - tag: Nombre de la vista
    - .disabled(!Bool): Si el bool es diferente de false desbloquea el botón
 
 */


import SwiftUI
struct MainView: View {
    @ObservedObject var mystory: myStory
    @State var searchString: String = ""
    @State var showingPopover = false
    @State private var selectedView: String? = nil
    @State private var PersonajeButtonP = false
    @State private var llegadaHernanButtonP = false
    @EnvironmentObject var viewRouter: ViewRouter
    
    @EnvironmentObject var authViewModel: AuthViewModel
    
    //Variables de bloqueo
    @State private var isPersonajeViewUnlocked = false
    @State private var isHernanViewUnlocked = false
    @State private var isHernanView2Unlocked = false
    @State private var isEncuentroViewUnlocked = false
    @State private var isSadNightViewUnlocked = false
    @State private var isCaidaViewUnlocked = false
    
    var body: some View {
        NavigationView {
            List {
               
                NavigationLink(destination: EscogePersonajeView(unlockPersonajeView: $isPersonajeViewUnlocked)){
                    Text("Escoge tu personaje")
                }
             
                NavigationLink(destination: PersonajeView(unlockHernanView: $isHernanViewUnlocked), tag: "PersonajeView", selection: $viewRouter.selectedView) {
                    Text("🧑‍🦲 Tu personaje")
                }
                .disabled(!isPersonajeViewUnlocked)
                
                
                NavigationLink(destination: LlegadaHernanView( unlockHernanView2: $isHernanView2Unlocked), tag: "HernanC", selection: $viewRouter.selectedView) {
                    Text("⛵️ Llegó Hernán Cortés")
                }
                .disabled(!isHernanView2Unlocked)
                .buttonStyle(PlainButtonStyle())
                
                NavigationLink(destination: Llegada2View( unlockEncuentro: $isEncuentroViewUnlocked), tag: "HernanC2", selection: $viewRouter.selectedView) {
                    Text("⛵️ Llegó Hernán Cortés")
                }
                .disabled(!isHernanViewUnlocked)
                .buttonStyle(PlainButtonStyle())
                
                
                NavigationLink(destination: EncuentroView(unlockSadNightView: $isSadNightViewUnlocked), tag: "Encuentro", selection: $viewRouter.selectedView) {
                    Text("⚔️ Un Encuentro Inesperado")
                }
                .disabled(!isEncuentroViewUnlocked)
                .buttonStyle(PlainButtonStyle())
                
                NavigationLink(destination: SadNightView(unlockCaida: $isCaidaViewUnlocked), tag: "SadNight", selection: $viewRouter.selectedView) {
                    Text("🌙 La noche triste")
                }
                .disabled(!isSadNightViewUnlocked)
                .buttonStyle(PlainButtonStyle())
                
                NavigationLink(destination: CaidaView(), tag: "Caida", selection: $viewRouter.selectedView) {
                    Text("⚠️ Tenochtitlan se cae")
                }
                .disabled(!isCaidaViewUnlocked)
                .buttonStyle(PlainButtonStyle())
                
                
               

          
            }
            .listStyle(SidebarListStyle())
      
            .frame(minWidth: 200, idealWidth: 250, maxWidth: 300, maxHeight: .infinity)
            .navigationTitle("Nueva Aventura")
      
            

            
            // Vista que se mostrará al seleccionar un botón
            if let selectedView = selectedView {
                switch selectedView {
                
                

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
    
    
    

