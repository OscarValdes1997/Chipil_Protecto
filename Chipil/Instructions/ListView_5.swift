//
//  ListView_5.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct ListView_5: View {
    private let instrucciones_1 = [instructions_1(id: 1, avatar: Image("bipolaridad"), titulo: "HERRAMIENTAS", description: "1-Contacta a un profesional de la salud mental: Si no tienes un médico o un terapeuta, busca a uno de inmediato. Puedes comunicarte con tu médico de cabecera, acudir a un psiquiatra o llamar a una línea de ayuda para obtener recomendaciones.\n\n2-Toma tus medicamentos: Si estás tomando medicamentos recetados, asegúrate de tomarlos según las indicaciones de tu médico. No los dejes de tomar sin consultar con un profesional de la salud.\n\n3-Haz cambios en tu estilo de vida: Practicar hábitos saludables como hacer ejercicio, dormir lo suficiente, comer alimentos saludables y evitar el alcohol y las drogas pueden ayudar a reducir los síntomas de la bipolaridad.\n\n4-Pide ayuda a tus seres queridos: Es importante tener una red de apoyo. Habla con amigos y familiares cercanos sobre cómo te sientes y pide su ayuda si la necesitas.\n\n5-Busca apoyo en grupos de apoyo: Participar en un grupo de apoyo para personas con trastornos bipolares puede ayudarte a conectarte con otras personas que experimentan lo mismo que tú y te brindará un espacio seguro para hablar sobre tus sentimientos y pensamientos."),
                                   
        instructions_1(id: 2, avatar: Image("bipolaridad"), titulo: "CONSEJOS", description: "Recuerda que la bipolaridad es un trastorno tratable y que con el tratamiento adecuado, es posible vivir una vida plena y satisfactoria.")]
    var body: some View {
      
        VStack{
            NavigationStack{
                Image("bipolaridadt").resizable().frame(width: 300, height: 100)
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

struct ListView_5_Previews: PreviewProvider {
    static var previews: some View {
        ListView_5()
    }
}
