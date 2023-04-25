//
//  LLAMADAS.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 25/04/23.
//

import SwiftUI

struct LLAMADAS: View {
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    Button(action: {
                        guard let phoneNumber = URL(string: "tel://5556554405") else { return }
                        UIApplication.shared.open(phoneNumber)
                    }) {
                        Text("Hospital Psiquiátrico Fray Bernardino Álvarez").foregroundColor(Color.black)
                    }
                    
                }
                Divider()
                VStack{
                    Button(action: {
                        guard let phoneNumber = URL(string: "tel://5555734866") else { return }
                        UIApplication.shared.open(phoneNumber)
                    }) {
                        Text("Hospital Psiquiátrico Infantil Juan N. Navarro").foregroundColor(Color.black)
                    }
                }
                Divider()
                VStack{
                    Button(action: {
                        guard let phoneNumber = URL(string: "tel://5527893000") else { return }
                        UIApplication.shared.open(phoneNumber)
                    }) {
                        Text("Hospital General de México").foregroundColor(Color.black)
                    }
                }
            }//llave del vstack geenral
        }//llave del zstack
    }//llave del body
}//llave final

struct LLAMADAS_Previews: PreviewProvider {
    static var previews: some View {
        LLAMADAS()
    }
}
