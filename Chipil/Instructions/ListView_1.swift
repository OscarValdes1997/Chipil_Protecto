//
//  ListView_1.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct ListView_1: View {
    
    
    private let instrucciones_1 = [instructions_1(id: 1, avatar: Image("ansiedad"), titulo: "HERRAMIENTAS", description: "1-Reconoce lo que está sucediendo: El primer paso para manejar un ataque de ansiedad es reconocer lo que está sucediendo. Identifica que estás experimentando una crisis de ansiedad y no algo más peligroso. \n2-Busca un lugar tranquilo: Si es posible, intenta encontrar un lugar tranquilo donde puedas sentarte o acostarte y respirar profundamente.\n3-Respira profundamente: Respira lentamente, inhalando profundamente por la nariz y exhalando por la boca. Haz esto varias veces hasta que te sientas más calmado.\n4-Usa técnicas de relajación: Otras técnicas de relajación que puedes probar incluyen la meditación, la visualización y la relajación muscular progresiva.\n5-Céntrate en el presente: Trata de concentrarte en el momento presente y no en pensamientos negativos o preocupantes. Piensa en cosas positivas y reconoce que la ansiedad pasará.\n6-Busca apoyo: Si te sientes abrumado o necesitas ayuda, no dudes en buscar apoyo de amigos, familiares o un profesional de la salud mental."),
                                   
        instructions_1(id: 2, avatar: Image( "ansiedad"), titulo: "CONSEJOS", description: "Recuerda que la ansiedad no es algo que deba ser ignorado o minimizado. Si experimentas ataques de ansiedad con frecuencia, es importante buscar ayuda profesional para aprender a manejar tus síntomas y mejorar tu calidad de vida.")]
        
        
    var body: some View {
        VStack{
            NavigationStack{
                Image("ansiedadt").resizable().frame(width: 300, height: 100)
                VStack{
                    List(instrucciones_1, id: \.id) { instructions_1 in
                        
                        NavigationLink(destination:ListDetailView_1(instrucciones: instructions_1)){
                            
                            
                            
                            RowView_1(RowInstrucciones: instructions_1)
                            
                        }
                    }.background(Color("blue_1"))
                    
                
                    
                        
                    
                }//vstack de la lista
            }
            
        }.background(Color("blue_1"))
        
    }//llave del body
}//llave final

struct ListView_1_Previews: PreviewProvider {
    static var previews: some View {
        ListView_1()
    }
}
