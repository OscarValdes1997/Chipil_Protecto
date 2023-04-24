//
//  Side_Menu.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct Side_Menu: View {
    @Binding var selectedTable: String
    @Namespace var animation
    @State var isModal: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 15, content: {
            
            //Imagen del menu
            Image("Chipil_117")
                .resizable().aspectRatio( contentMode: .fill)
                .frame(width: 70, height: 130)
                .cornerRadius(10)
                .padding(.top,50)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Chipil")
                    .padding(.top, -10)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
            })
            
            Button("Creadores") {
                 self.isModal = true
             }.sheet(isPresented: $isModal, content: {
                 Credenciales()
             }).foregroundColor(.black).opacity(0.4)
                .fontWeight(.semibold)
                .padding(.top, -15)
            
            
            VStack(alignment: .leading, spacing: 5){
                
                TabButton(image: Image(systemName: "person.circle"), title: "Inicio              ", animation: animation, selectedTab: $selectedTable)
                
                TabButton(image: Image(systemName: "person.circle"), title: "Anciedad      ", animation: animation, selectedTab: $selectedTable)
                
                TabButton(image: Image(systemName: "person.circle"), title: "Depresion     ", animation: animation, selectedTab: $selectedTable)
                
                TabButton(image: Image(systemName: "person.circle"), title: "Sustancias    ", animation: animation, selectedTab: $selectedTable)
                
                TabButton(image: Image(systemName: "person.circle"), title: "TDA                 ", animation: animation, selectedTab: $selectedTable)
                
                TabButton(image: Image(systemName: "person.circle"), title: "bipolaridad    ", animation: animation, selectedTab: $selectedTable)
                
                TabButton(image: Image(systemName: "person.circle"), title: "Esquizofrenia", animation: animation, selectedTab: $selectedTable)
                }
            .padding(.leading,-15)
            .padding(.top,50)
            
        })
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
        
        
    }
}

struct Side_Menu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
