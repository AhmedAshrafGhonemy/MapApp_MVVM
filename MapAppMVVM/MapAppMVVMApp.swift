//
//  MapAppMVVMApp.swift
//  MapAppMVVM
//
//  Created by macbook on 02/01/2022.
//

import SwiftUI

@main
struct MapAppMVVMApp: App {
    
    @StateObject private var vm = LocationViewModel()

    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
    }
}
