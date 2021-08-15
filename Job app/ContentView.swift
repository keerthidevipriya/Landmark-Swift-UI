//
//  ContentView.swift
//  Job app
//
//  Created by Keerthi Devi Priya GAVARA on 14/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().ignoresSafeArea(edges: .top).frame( height: 300)
            
            CircleImage().offset(y: -30).padding(.bottom, -30)
            
            VStack(alignment: .leading, spacing: nil, content: {
                Text("Dmart!!").font(.title)
                HStack {
                    Text("Guntur Andhra pradesh").font(.subheadline)
                    Spacer()
                    Text("India").font(.subheadline)
                }.font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("Pin Code").font(.subheadline)
                
                Text("522002").font(.subheadline)
                
            }).padding()
            
            Spacer()
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
