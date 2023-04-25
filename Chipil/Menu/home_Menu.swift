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
            //Text("holaaaaaa chipil")
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
                Color("blue_1").opacity(1).edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                VStack{
                    Image("portada").frame(width: 300, height: 300).offset(x: 0,y: -400).shadow(radius: 10)
                }
                ZStack{
                    Image("pie_de_pagina").frame(width: 300, height: 300).offset(x: 0,y: 300).shadow(radius: 5)
                }
                    HStack{
                        VStack(alignment: .leading , spacing: -10){
                            
                            NavigationLink{
                                ListView_1()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image("ansiedadF"), description: "ANSIEDAD"))
                            }
                            
                            NavigationLink{
                                ListView_4()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image( "tdaF"), description: "TDA"))
                            }
                            
                            NavigationLink{
                                ListView_5()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image("bipolaridadF"), description: "BIPOLARIDAD"))
                            }
                        }
                        
                        VStack(alignment: .leading , spacing: -10){
                            NavigationLink{
                                ListView_2()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image("depresionF"), description: "DEPRESION"))
                            }
                            
                            NavigationLink{
                                ListView_3()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image( "sustanciasF"), description: "ABUSO DE "))
                            }
                            
                            NavigationLink{
                                ListView_1()
                            }label: {
                                RowView(Ximena: Persona(id: 2, avatar: Image( "esquizofreniaF"), description: "ESQUIZO"))
                            }
                            
                        }
                       
                    }.background(Color("fondo_2"))
                
               
                }//vstak
        }
    }
}


