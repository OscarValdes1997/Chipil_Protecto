//
//  ListDetailView_1.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI
   

struct ListDetailView_1: View {
    var instrucciones: instructions_1
    var body: some View {
        VStack{
            VStack{
                instrucciones.avatar.resizable().frame(width: 200, height: 200)
                    .foregroundColor(Color.black)
                    .clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5)
                    .padding()
                Text(instrucciones.titulo).font(.title).fontWeight(.heavy)
                
                Spacer()
            }
            VStack{
                Text(instrucciones.description)
                    .fontWeight(.medium)
                    .padding()
                Spacer()
            }
            
        }//Vstack general
    } //llave del body
}//llave final

struct ListDetailView_1_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView_1(instrucciones: instructions_1(id: 1, avatar: Image(systemName: "person.circle"), titulo: "Ejemplo", description: "Informacion de instrucciones"))
    }
}
