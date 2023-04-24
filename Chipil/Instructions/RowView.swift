//
//  RowView.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct RowView: View {
    
    
    var Ximena: Persona
    
    
    var body: some View {
       
        ZStack{
           // Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            VStack{
                Ximena.avatar.resizable().frame(width: 100, height: 100)
                    .overlay{
                        Circle().stroke(.green, lineWidth: 4)
                    }
                VStack(alignment: .leading){
                    Text(Ximena.description)
                        .font(.system(size: 20, weight: .light, design: .serif))
                            .italic()
                        .foregroundColor(Color.black)
                    
                }//Cierre Vstack
                Spacer()
            }//Cierre Hstack
            .padding()
        }//Cierre Zstack
        
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(Ximena: Persona(id: 2, avatar: Image(systemName:  "person.crop.square"), description: "Holaaaa"))
    }
}
