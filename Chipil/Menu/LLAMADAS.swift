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
            Color("blue_1").opacity(1).edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            Image("portada2").shadow(radius: 5).offset(y: -350).opacity(0.5)
            Image("ayudante").frame(width: 300, height: 300).offset(x: 0,y: 300).shadow(radius: 5).opacity(0.5)
            VStack{
            VStack{
                
                
                VStack{
                    Text("HOSPITALES CDMX").font(.title).fontWeight(.heavy)
                }
                
                
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
                Divider()
                VStack{
                    Button(action: {
                        guard let phoneNumber = URL(string: "tel://5556554405") else { return }
                        UIApplication.shared.open(phoneNumber)
                    }) {
                        Text("Hospital Psiquiátrico Fray Juan de Dios").foregroundColor(Color.black)
                    }
                }
                Divider()
                
            }//llave del vstack geenral
                VStack{
                    VStack{
                        Text("HOSPITALES EDOMEX").font(.title).fontWeight(.heavy)
                    }
                    .padding()//SEFGUNDA LLAVE VSTACK
                    
                    VStack{
                        Button(action: {
                            guard let phoneNumber = URL(string: "tel://7222150858") else { return }
                            UIApplication.shared.open(phoneNumber)
                        }) {
                            Text("Hospital Psiquiátrico Dr. Samuel Ramírez Moreno ").foregroundColor(Color.black)
                        }
                    }
                    Divider()
                    VStack{
                        Button(action: {
                            guard let phoneNumber = URL(string: "tel://5557162177") else { return }
                            UIApplication.shared.open(phoneNumber)
                        }) {
                            Text("Hospital Psiquiátrico José Torres Orozco ").foregroundColor(Color.black)
                        }
                    }
                    Divider()
                    VStack{
                        Button(action: {
                            guard let phoneNumber = URL(string: "tel//5553741515") else { return }
                            UIApplication.shared.open(phoneNumber)
                        }) {
                            Text("GRUPO CALTIA PSICOLOGÍA S.C.").foregroundColor(Color.black)
                        }
                    }
                    Divider()
                       
                    VStack{
                        Button(action: {
                            guard let phoneNumber = URL(string: "tel://5553583400") else { return }
                            UIApplication.shared.open(phoneNumber)
                        }) {
                            Text("Hospital Psiquiátrico San Juan de Dios").foregroundColor(Color.black)
                        }
                    }
                    Divider()
                    
                    
                    
                    
                    
                    
                    
                    
                }
            }
        }//llave del zstack
    }//llave del body
}//llave final

struct LLAMADAS_Previews: PreviewProvider {
    static var previews: some View {
        LLAMADAS()
    }
}
