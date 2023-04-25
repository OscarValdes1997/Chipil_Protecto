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
            Color("blue_1").opacity(1).edgesIgnoringSafeArea(.all)//cambiar
                VStack{
                    
                    VStack{
                       
                        Image("chipilF").resizable().frame(width: 370,height: 370)
                        Image("nombre_b").resizable().frame(width: 280,height: 100)
                        
                        NavigationLink{
                            MainView()
                        } label: {
                            Image(systemName: "arrow.right")
                                .foregroundColor(Color.green)
                                .font(.system(size: 70, weight: .bold))
                                .padding()
                                .shadow(color: .white, radius:1)
                            
                                .navigationTitle(" ")
                        }
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
