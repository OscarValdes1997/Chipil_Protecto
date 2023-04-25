//
//  ListView_2.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI

struct ListView_2: View {
    
    private let instrucciones_1 = [instructions_1(id: 1, avatar: Image("depresion"), titulo: "HERRAMIENTAS", description: "1-Busca ayuda profesional: Si estás experimentando síntomas graves de depresión, es importante que busques ayuda de un profesional de la salud mental lo antes posible. Puedes pedir una cita con un psiquiatra, psicólogo o terapeuta para obtener asesoramiento y tratamiento.\n\n2-Habla con alguien: Si no puedes ver a un profesional de la salud mental de inmediato, es importante que hables con alguien de confianza. Puedes hablar con un amigo, familiar o un miembro de tu comunidad religiosa. Compartir tus sentimientos y pensamientos puede ayudarte a sentirte mejor.\n\n3-Practica la autocompasión: La autocrítica y la culpa pueden empeorar los síntomas de la depresión. Es importante que te trates con amabilidad y compasión a ti mismo. Practica la autocompasión, acepta tus limitaciones y busca maneras de cuidarte.\n\n4-Haz ejercicio: El ejercicio regular puede ayudar a mejorar los síntomas de la depresión al aumentar los niveles de endorfinas, que son sustancias químicas en el cerebro que te hacen sentir bien. Intenta hacer al menos 30 minutos de ejercicio moderado todos los días.\n\n5-Cuida tu dieta: Una dieta saludable puede ayudar a mejorar los síntomas de la depresión. Trata de comer alimentos ricos en nutrientes, como frutas, verduras, granos enteros, proteínas magras y grasas saludables.\n\n6-Descansa lo suficiente: La falta de sueño puede empeorar los síntomas de la depresión. Trata de dormir entre 7 y 9 horas por noche.\n\n7-Haz actividades que disfrutes: Realizar actividades que te gusten y te den placer puede ayudarte a sentirte mejor. Puede ser leer un libro, escuchar música, pintar, bailar, etc."),
        instructions_1(id: 2, avatar: Image("depresion"), titulo: "CONSEJO", description: "Recuerda que la depresión es tratable y que hay muchas formas de obtener ayuda y apoyo para manejar tus síntomas.")]
    var body: some View {
        VStack{
            NavigationStack{
                Image("depresiont").resizable().frame(width: 300, height: 100)
                VStack{
                    List(instrucciones_1, id: \.id) { instructions_1 in
                        
                        NavigationLink(destination:ListDetailView_1(instrucciones: instructions_1)){
                            
                            
                            
                            RowView_1(RowInstrucciones: instructions_1)
                            
                        }
                    }//quitar fonde de las listar
                        .background(Color("blue_1"))
                    
                }//vstack de la lista
            }
            
        }.background(Color("blue_1"))
    }
}

struct ListView_2_Previews: PreviewProvider {
    static var previews: some View {
        ListView_2()
    }
}
