//
//  BMWApp.swift
//  BMW
//
//  Created by Craig Clayton on 12/21/20.
//

import SwiftUI

@main
struct BMWApp: App {
    
    @StateObject var model = CarViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
