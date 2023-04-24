//
//  ListView_3.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct ListView_3: View {
    private let instrucciones_1 = [instructions_1(id: 1, avatar: Image(systemName: "person.circle"), titulo: "Ejemplo_1", description: "Hola a Todos"),
        instructions_1(id: 2, avatar: Image(systemName: "person.circle"), titulo: "Ejemplo_2", description: "Hola Master")]
    
    var body: some View {
        
        NavigationStack{
            
            List(instrucciones_1, id: \.id) { instructions_1 in
                
                NavigationLink(destination:ListDetailView_1(instrucciones: instructions_1)){
                    
                    
                    
                    RowView_1(RowInstrucciones: instructions_1)
                    
                }
            }
            .navigationTitle("Sustancias")
        }
    }
}

struct ListView_3_Previews: PreviewProvider {
    static var previews: some View {
        ListView_3()
    }
}
