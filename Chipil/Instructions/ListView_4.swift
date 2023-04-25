//
//  ListView_4.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct ListView_4: View {
    private let instrucciones_1 = [instructions_1(id: 1, avatar: Image("tda"), titulo: "HERRAMIENTAS", description: "1-Busca información: Es importante que conozcas más sobre el TDA y cómo puede afectar a las personas para que puedas entender mejor las experiencias de la persona con TDA.\n\n2-Sé comprensivo: Las personas con TDA pueden tener dificultades para concentrarse y pueden ser impulsivas. Intenta ser paciente y comprensivo cuando estés con ellos.\n\n3-Brinda apoyo: Pregúntale a la persona con TDA cómo puedes ayudarla. Puedes ofrecer apoyo emocional o práctico, como ayudarles a organizarse o recordarles las tareas importantes.\n\n4-Sé claro y directo: Las personas con TDA pueden tener dificultades para seguir instrucciones complejas o mantener la atención durante largos períodos de tiempo. Trata de ser claro y directo en tus comunicaciones con ellos.\n\n5-Anima a buscar tratamiento: Si la persona con TDA aún no ha recibido tratamiento, anímala a buscar ayuda profesional. Un diagnóstico y tratamiento adecuados pueden hacer una gran diferencia en su calidad de vida."),
                                   
        instructions_1(id: 2, avatar: Image("tda"), titulo: "CONSEJOS", description: "En general, lo más importante es tratar a la persona con TDA con respeto, comprensión y empatía.")]
    
    var body: some View {
        
        VStack{
            NavigationStack{
                Image("tdat").resizable().frame(width: 300, height: 100)
                VStack{
                    List(instrucciones_1, id: \.id) { instructions_1 in
                        
                        NavigationLink(destination:ListDetailView_1(instrucciones: instructions_1)){
                            
                            
                            
                            RowView_1(RowInstrucciones: instructions_1)
                            
                        }
                    }
                        .background(Color("blue_1"))
                    
                }//vstack de la lista
            }
            
        }.background(Color("blue_1"))
    }
}

struct ListView_4_Previews: PreviewProvider {
    static var previews: some View {
        ListView_4()
    }
}
