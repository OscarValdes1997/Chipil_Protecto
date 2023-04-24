//
//  RowView_1.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct RowView_1: View {
    var RowInstrucciones : instructions_1
    
    var body: some View {
        HStack{
            
            RowInstrucciones.avatar.resizable().frame(width: 50 , height: 50).clipShape(Circle())
                .padding()
            VStack(alignment:. leading){
                Text(RowInstrucciones.titulo)
                    .font(.title)
            }
            Spacer()
        }//llave del Hstack
    }//llave del body
}//llave final
    
    struct RowView_1_Previews: PreviewProvider {
        static var previews: some View {
            RowView_1(RowInstrucciones: instructions_1(id: 1, avatar: Image(systemName: "person.circle"), titulo: "Ejemplo", description: "Informacion de instrucciones"))
        }
    }

