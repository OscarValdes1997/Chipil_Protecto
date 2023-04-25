//
//  ListDetailView_1.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI
   

struct ListDetailView_1: View {
    var instrucciones: instructions_1
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    instrucciones.avatar.resizable().frame(width: 200, height: 200)
                        .foregroundColor(Color.black)
                        .clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5)
                    Text(instrucciones.titulo).font(.title).fontWeight(.heavy)
                    
                }
                VStack{
                    Text(instrucciones.description)
                        .fontWeight(.medium)
                        .padding()
                    Spacer()
                }
                
            }//Vstack general
        }
    } //llave del body
}//llave final

struct ListDetailView_1_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView_1(instrucciones: instructions_1(id: 1, avatar: Image(systemName: "person.circle"), titulo: "Ejemplo", description: "1-Reconoce lo que está sucediendo: El primer paso para manejar un ataque de ansiedad es reconocer lo que está sucediendo. Identifica que estás experimentando una crisis de ansiedad y no algo más peligroso. \n2-Busca un lugar tranquilo: Si es posible, intenta encontrar un lugar tranquilo donde puedas sentarte o acostarte y respirar profundamente.\n3-Respira profundamente: Respira lentamente, inhalando profundamente por la nariz y exhalando por la boca. Haz esto varias veces hasta que te sientas más calmado.\n4-Usa técnicas de relajación: Otras técnicas de relajación que puedes probar incluyen la meditación, la visualización y la relajación muscular progresiva.\n5-Céntrate en el presente: Trata de concentrarte en el momento presente y no en pensamientos negativos o preocupantes. Piensa en cosas positivas y reconoce que la ansiedad pasará.\n6-Busca apoyo: Si te sientes abrumado o necesitas ayuda, no dudes en buscar apoyo de amigos, familiares o un profesional de la salud mental."))
    }
}
