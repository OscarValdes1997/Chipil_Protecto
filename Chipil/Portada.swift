//
//  Portada.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct Portada: View {
    var body: some View {
        NavigationStack{
            ZStack{
            Color("blue_1").opacity(0.3).edgesIgnoringSafeArea(.all)//cambiar
            VStack{
                Image("Chípil").resizable().frame(width: 200,height: 370)
                Image("nombre_n").resizable().frame(width: 280,height: 100)
               
                    NavigationLink{
                        MainView()
                    } label: {
                        Image(systemName: "arrow.right")
                            .foregroundColor(Color.green)
                            .font(.system(size: 40, weight: .bold))
                            .padding()
                            .shadow(color: .white, radius:1)
                        
                            .navigationTitle(" ")
                    }
                }
            }
        }// llave de la navegacion
        
    }//llve del body
}//llave final

struct Portada_Previews: PreviewProvider {
    static var previews: some View {
        Portada()
    }
}
