//
//  Job_appApp.swift
//  Job app
//
//  Created by Keerthi Devi Priya GAVARA on 14/08/21.
//

import SwiftUI

@main
struct Job_appApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
