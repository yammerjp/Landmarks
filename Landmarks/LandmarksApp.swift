//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 中山慶祐 on 2021/07/08.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}


