//
//  ListView_6.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct ListView_6: View {
    private let instrucciones_1 = [instructions_1(id: 1, avatar: Image("esquizofrenia"), titulo: "HERRAMIENTAS", description: "1-Busca ayuda profesional: Lo primero que debes hacer es buscar atención médica de un profesional de la salud mental. Un psiquiatra o un psicólogo pueden realizar una evaluación y diagnóstico adecuado y ofrecer un tratamiento adecuado.\n\n2-Busca un ambiente seguro: Si te encuentras en un lugar que no es seguro, busca ayuda de la policía o de una ambulancia. Si te encuentras con alguien que está experimentando un episodio de esquizofrenia, trata de mantener la calma y hazle saber que estás ahí para ayudarlo.\n\n3-Sigue el plan de tratamiento: Si ya tienes un plan de tratamiento, asegúrate de seguirlo rigurosamente. Esto puede incluir tomar medicamentos, asistir a terapia y hacer cambios en el estilo de vida para reducir el estrés.\n\n4-Aprende sobre la enfermedad: Educarse sobre la esquizofrenia y sus síntomas puede ayudarte a comprender mejor lo que estás experimentando o a comprender mejor a alguien que la padece.\n\n5-Busca apoyo: Habla con amigos y familiares y pide su apoyo. También puedes buscar grupos de apoyo o hablar con un consejero para obtener apoyo emocional adicional."),
                                   
        instructions_1(id: 2, avatar: Image("esquizofrenia"), titulo: "CONSEJOS", description: "Recuerda que la esquizofrenia es una enfermedad tratable y con el apoyo adecuado, muchas personas pueden llevar una vida plena y satisfactoria.")]
    var body: some View {
        
        VStack{
            NavigationStack{
                Image("esquizofreniat").resizable().frame(width: 300, height: 100)
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

struct ListView_6_Previews: PreviewProvider {
    static var previews: some View {
        ListView_6()
    }
}
