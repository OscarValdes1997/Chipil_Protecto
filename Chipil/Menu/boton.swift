//
//  boton.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 25/04/23.
//

import SwiftUI

struct boton: View {
    var boton1: button_1
    
    var body: some View {
        
        Button(action:{}, label: {
            
            HStack(spacing: 10){
                Image(systemName: "person.fill.checkmark")
                    .font(.title2)
                Text(boton1.title)
                    .fontWeight(.semibold)
            }
            
            .foregroundColor(Color.green)
            .padding(.vertical,12)
            .padding(.horizontal,20)
            
            
            .background(.white)
            .cornerRadius(15)
            
        })
    }
}

struct boton_Previews: PreviewProvider {
    static var previews: some View {
        boton(boton1: button_1(image: Image(systemName: "person.fill"), title: "Hola"))
    }
}

struct button_1{

    var image: Image
    var title: String
}
