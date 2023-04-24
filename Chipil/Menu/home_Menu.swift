//
//  home_Menu.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct home_Menu: View {
    @Binding var selectedTable: String
    
    init(selectedTab: Binding<String>){
        self._selectedTable = selectedTab
    
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        TabView(selection: $selectedTable){
            
            
            inicio()
                .tag("fgb")
            
        
           
        }
       
    }
}

struct home_Menu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
    
}

struct inicio: View{
    var body: some View{
        NavigationStack{
            ZStack{
                Color("blue_1").opacity(0.3).edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                    HStack{
                        VStack(alignment: .leading , spacing: -10){
                            
                            NavigationLink{
                                ListView_1()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image("ansiedad"), description: "ANSIEDAD"))
                            }
                            
                            
                            
                            
                            NavigationLink{
                                ListView_4()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image( "tda"), description: "TDA"))
                            }
                            
                            NavigationLink{
                                ListView_5()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image("bipolaridad"), description: "BIPOLARIDAD"))
                            }
                        }
                        
                        VStack(alignment: .leading , spacing: -10){
                            NavigationLink{
                                ListView_2()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image("depresion"), description: "DEPRESION"))
                            }
                            
                            NavigationLink{
                                ListView_3()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image( "sustancias"), description: "ABUSO DE "))
                            }
                            
                            NavigationLink{
                                ListView_1()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image( "esquizofrenia"), description: "ESQUIZO"))
                            }
                        }
                    }
                    
                }//vstak
                
        }
    }
}


