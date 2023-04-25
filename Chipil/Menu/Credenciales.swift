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
            Color.white.edgesIgnoringSafeArea(.all)
            VStack{
                Image("FESA").resizable().aspectRatio( contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .shadow(radius: 5)
                
                Divider()
                Text("Diseñadora grafica").font(.title).fontWeight(.black)
                    .foregroundColor(Color.blue)
                    .shadow(radius: 5)
                Text("Avilez Pedroza ivon Dulce Anahí")
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                Divider()
                Text("Programadores").font(.title).fontWeight(.black)
                    .foregroundColor(Color.blue)
                    .shadow(radius: 5)
                Text("Mejia Jacobo Ximena Juana").fontWeight(.bold)
                    .foregroundColor(Color.blue)
                Text("Valdes Rodriguez Oscar Roberto").fontWeight(.bold)
                    .foregroundColor(Color.blue)
                
            }
        }
    }
}

struct Credenciales_Previews: PreviewProvider {
    static var previews: some View {
        Credenciales()
    }
}
