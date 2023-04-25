//
//  Credenciales.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct Credenciales: View {
    var body: some View {
        ZStack{
            Color("blue_1").opacity(1).edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            VStack{
                Image("FESA").resizable().aspectRatio( contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .shadow(radius: 5)
                
                Divider()
                Text("Diseñadora grafica").font(.title).fontWeight(.black)
                    .shadow(radius: 5)
                Text("Avilez Pedroza ivon Dulce Anahí")
                    .fontWeight(.bold)
                Divider()
                Text("Programadores").font(.title).fontWeight(.black)
                    .shadow(radius: 5)
                Text("Mejia Jacobo Ximena Juana").fontWeight(.bold)
                   
                Text("Valdes Rodriguez Oscar Roberto").fontWeight(.bold)
                   
                
            }
        }
    }
}

struct Credenciales_Previews: PreviewProvider {
    static var previews: some View {
        Credenciales()
    }
}
