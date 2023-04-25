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
                .frame(width: 80, height: 140)
                .cornerRadius(30)
                .padding(.top,30)
                .shadow(color: .white, radius:10)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Chipil")
                    .padding(.top, 10)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
            })
            
            Button("Creadores") {
                 self.isModal = true
             }.sheet(isPresented: $isModal, content: {
                 Credenciales()
             }).foregroundColor(.white).opacity(0.4)
                .fontWeight(.semibold)
                .padding(.top, -15)
            
            
            VStack(alignment: .leading, spacing: 5){

                NavigationLink{
                    LLAMADAS()
                } label: {
                    Image(systemName: "cross.case.fill").font(.system(size: 30, weight: .bold))
                   Text("CRISIS      ")
                }.fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(.white)
                    .cornerRadius(15)
                NavigationLink{
                    Mapas()
                    
                } label: {
                    Image(systemName: "house.circle.fill").font(.system(size: 30, weight: .bold))
                   Text("UBICANES")
                }.fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(.white)
                    .cornerRadius(15)
                
                
             
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
