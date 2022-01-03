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
    @State private var mapRegion : MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    var body: some View {
        
        ZStack{
            Map(coordinateRegion: $mapRegion)
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
