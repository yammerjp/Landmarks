//
//  ContentView.swift
//  Landmarks
//
//  Created by 中山慶祐 on 2021/07/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            
            HStack {
                Spacer()
                CircleImage()
                    .offset(y:-130)
                    .padding(.bottom, -130)
                Spacer()
            }
            
            VStack(alignment: .leading) {
                Text("Turtle Rocck")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
