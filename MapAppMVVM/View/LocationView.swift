//
//  LocationView.swift
//  MapAppMVVM
//
//  Created by AhmedAshraf on 03/01/2022.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    @EnvironmentObject private var vm : LocationViewModel
    
        
    var body: some View {
        
        ZStack{
            Map(coordinateRegion: $vm.mapRegion)
        }
        .ignoresSafeArea()
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationViewModel())
    }
}
