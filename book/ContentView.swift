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
import SceneKit
struct MainView: View {
    
    @State private var scene: SCNScene?
    @ObservedObject var mystory: myStory
    @State var searchString: String = ""
    @State var showingPopover = false
    @State private var PersonajeButtonP = false
    @State private var llegadaHernanButtonP = false
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var selectedView: String? = "WorldView"
    @State private var selectedViewDesicion: String? = nil
    
    @EnvironmentObject var authViewModel: AuthViewModel
    
    //Variables de bloqueo
    @State private var isPersonajeViewUnlocked = false
    @State private var isHernanViewUnlocked = false
    @State private var isHernanView2Unlocked = false
    @State private var isHernanView3Unlocked = false
    @State private var isHernanViewSiUnlocked = false
    @State private var isHernanViewNoUnlocked = false
    @State private var isHernanView4Unlocked = false
    @State private var isEncuentroViewUnlocked = false
    @State private var isEncuentro2ViewUnlocked = false
    @State private var isSadNightViewUnlocked = false
    @State private var isSadNight2ViewUnlocked = false
    @State private var isSadNight3ViewUnlocked = false
    @State private var isSadNight4ViewUnlocked = false
    @State private var isCaidaViewUnlocked = false
    @State private var isCaida2ViewUnlocked = false
    @State private var isCaida3ViewUnlocked = false
    @State private var isCaida4ViewUnlocked = false
    @State private var isCaida5ViewUnlocked = false
    
    
    var body: some View {
        NavigationView {
            ZStack{
                List {
                    
                    Section(header:
                                Text("Comienza tu aventura")
                    ){
                        
                        NavigationLink(destination: EscogePersonajeView(unlockPersonajeView: $isPersonajeViewUnlocked)){
                            Text("✍️ Escoge tu personaje")
                            
                        }
                        
                        NavigationLink(destination: PersonajeView(unlockHernanView: $isHernanViewUnlocked), tag: "PersonajeView", selection: $viewRouter.selectedView) {
                            Text("🧑‍🦲 Tu personaje")
                        }
                        .disabled(!isPersonajeViewUnlocked)
                    }
                    
                    
                    Section(header:
                                Text("Llegada Hernán Cortés")
                        .foregroundStyle(isHernanViewUnlocked ? Color.black : Color.gray)
                    ){
                        NavigationLink(destination: LlegadaHernanView( unlockHernanView2: $isHernanView2Unlocked), tag: "HernanC", selection: $viewRouter.selectedView) {
                            Text("⛵️ Un Largo Viaje")
                        }
                        .disabled(!isHernanViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: Llegada2View( unlockHernanView3: $isHernanView3Unlocked), tag: "HernanC2", selection: $viewRouter.selectedView) {
                            Text("🤝 Amigos y aliados")
                        }
                        .disabled(!isHernanView2Unlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: Llegada3View(unlockHernanView4: $isHernanView4Unlocked), tag: "HernanC3", selection: $viewRouter.selectedView){
                            Text("🛡️ Batalla Centla")}
                        // }
                        .disabled(!isHernanView3Unlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: Llegada4View( unlockEncuentro: $isEncuentroViewUnlocked), tag: "HernanC4", selection: $viewRouter.selectedView) {
                            Text("❤️ Un amor puro")
                        }
                        .disabled(!isHernanView4Unlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                    }
                    
                    
                    
                    Section(header:
                                Text("Un encuentro inesperado")
                        .foregroundStyle(isEncuentro2ViewUnlocked ? Color.black : Color.gray)
                    ){
                        NavigationLink(destination: EncuentroView(unlockEncuentro2: $isEncuentro2ViewUnlocked), tag: "Encuentro", selection: $viewRouter.selectedView) {
                            Text("🔗 Prisionero de la Ciudad Pérdida")
                        }
                        .disabled(!isEncuentroViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: Encuentro2View(unlockSadNightView: $isSadNightViewUnlocked), tag: "Encuentro2", selection: $viewRouter.selectedView) {
                            Text("🪖 Nuevo Líder")
                        }
                        .disabled(!isEncuentro2ViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                    }
                    Section(header:
                                Text("La noche triste")
                        .foregroundStyle(isSadNightViewUnlocked ? Color.black : Color.gray)
                    ){
                        NavigationLink(destination: SadNightView(unlocksadnight2: $isSadNight2ViewUnlocked), tag: "SadNight", selection: $viewRouter.selectedView) {
                            Text("🌙 La noche triste")
                        }
                        .disabled(!isSadNightViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: SadNight2(unlocksadnight3: $isSadNight3ViewUnlocked), tag: "SadNight2", selection: $viewRouter.selectedView) {
                            Text("🔥 La rebelión")
                        }
                        .disabled(!isSadNight2ViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: SadNight3(unlocksadnight4: $isSadNight4ViewUnlocked), tag: "SadNight3", selection: $viewRouter.selectedView) {
                            Text("🛖 El robo de Tenochtitlan")
                        }
                        .disabled(!isSadNight3ViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: SadNight4(unlockcaida: $isCaidaViewUnlocked), tag: "SadNight4", selection: $viewRouter.selectedView) {
                            Text("🕊️ La despedida de Moctezuma")
                        }
                        .disabled(!isSadNight4ViewUnlocked)
                        
                        .buttonStyle(PlainButtonStyle())
                    }
                    Section(header:
                                Text("La caída de Tenochtitlan")
                        .foregroundStyle(isCaidaViewUnlocked ? Color.black : Color.gray)
                    ){
                        NavigationLink(destination: CaidaView(unlockcaida2: $isCaida2ViewUnlocked), tag: "Caida", selection: $viewRouter.selectedView) {
                            Text("🤒 La primera pandemia")
                        }
                        .disabled(!isCaidaViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        
                        NavigationLink(destination: CaidaView2(unlockcaida3: $isCaida3ViewUnlocked), tag: "Caida2", selection: $viewRouter.selectedView) {
                            Text("🍽️ Platos Vacíos")
                        }
                        .disabled(!isCaida2ViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: CaidaView3(unlockcaida4: $isCaida4ViewUnlocked), tag: "Caida3", selection: $viewRouter.selectedView) {
                            Text("🛕 La invasión a la ciudad")
                        }
                        .disabled(!isCaida3ViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: CaidaView4(unlockcaida5: $isCaida5ViewUnlocked), tag: "Caida4", selection: $viewRouter.selectedView) {
                            Text("🛕 La invasión a la ciudad")
                        }
                        .disabled(!isCaida4ViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink( destination: CaidaView5(), tag: "Caida5", selection: $viewRouter.selectedView) {
                            Text("✨ El final de la hisotria")
                        }
                        .disabled(!isCaida5ViewUnlocked)
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                
                .listStyle(SidebarListStyle())
                
                .frame(minWidth: 200, idealWidth: 250, maxWidth: 300, maxHeight: .infinity)
                .navigationTitle("Nueva Aventura")
                
            }
            
            
                
                    
            if selectedView != nil {
                        switch viewRouter.selectedViewDecision {
                            
                        case "WorldView":
                            
                            ContentWorldView()
                            
                        case "llegadasi":
                          
                            LlegadaSiView()
                            
                        default:
                            Text("Vista no encontrada")
                        }
                    }
                }
        

        
            }
            
        }


    
    
    
    
    
    
    

