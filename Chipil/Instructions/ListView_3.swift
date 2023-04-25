//
//  ListView_3.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct ListView_3: View {
    private let instrucciones_1 = [instructions_1(id: 1, avatar: Image("sustancias"), titulo: "HERRAMIENTAS", description: "1-Buscar ayuda médica de inmediato: Si la persona está experimentando síntomas graves, como convulsiones, dificultad para respirar o pérdida del conocimiento, llame al servicio de emergencias local de inmediato. Si la persona está consciente y no está experimentando síntomas graves, es importante llevarla a un centro de atención médica para que sea evaluada por un profesional de la salud.\n\n2-Proporcionar información relevante: Si es posible, proporcione información relevante sobre la sustancia que se consumió, la cantidad y el momento en que se consumió. Esto ayudará al profesional de la salud a determinar el mejor curso de acción.\n\n3-Proporcionar apoyo emocional: El abuso de sustancias puede ser traumático y aterrador. Es importante ofrecer apoyo emocional a la persona afectada y hacerle saber que no está sola. Escucharla y estar presente puede ser de gran ayuda.\n\n4-Evitar la confrontación: Es importante evitar la confrontación o el castigo en este momento. La persona afectada puede sentirse avergonzada o asustada, y la confrontación puede empeorar la situación.\n\n5-Buscar tratamiento: Una vez que la persona esté estabilizada y haya recibido atención médica, es importante buscar tratamiento para el abuso de sustancias. Un profesional de la salud puede recomendar opciones de tratamiento, como la terapia o el tratamiento en un centro de rehabilitación."),
                                   
        instructions_1(id: 2, avatar: Image("sustancias"), titulo: "CONSEJOS", description: "Hola Master")]
    
    var body: some View {
        
        VStack{
            NavigationStack{
                Image("sustanciast").resizable().frame(width: 300, height: 100)
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

struct ListView_3_Previews: PreviewProvider {
    static var previews: some View {
        ListView_3()
    }
}
