//
//  ContentView.swift
//  Landmarks
//
//  Created by 中山慶祐 on 2021/07/08.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingLogo: Bool = true
    @State var opacity: Double = 0
    
    var body: some View {

        if isShowingLogo {
            Badge()
                .onAppear() {
                    /*
                    withAnimation(.linear(duration: 2.0)) {
                        self.isShowingLogo = false
                    }
 */
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        withAnimation(.linear(duration: 1.0)) {
                            self.isShowingLogo = false
                        }
                    }
                 }
        } else {
            LandmarkList()
                .onAppear{
                    withAnimation(.linear(duration: 0.3)) {
                        self.opacity = 1.0
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
