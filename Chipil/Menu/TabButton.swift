//
//  TabButton.swift
//  Chipil
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/04/23.
//

import SwiftUI
struct TabButton: View {
    var image: Image
    var title: String
    
    var  animation: Namespace.ID
    
    @Binding var selectedTab: String
    
    var body: some View {
        
        Button(action:{}, label: {
            
            HStack(spacing: 10){
                Image(systemName: "person.fill.checkmark")
                    .font(.title2)
                Text(title)
                    .fontWeight(.semibold)
            }
            
            .foregroundColor(selectedTab == title ? Color("blue"): .black)
            .padding(.vertical,12)
            .padding(.horizontal,20)
            
            
            .background(.white)
            .cornerRadius(15)
            
        })
        
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
