//
//  LocationViewModel.swift
//  MapAppMVVM
//
//  Created by AhmedAshraf on 03/01/2022.
//

import Foundation
import MapKit
import SwiftUI

class LocationViewModel : ObservableObject {
    
    @Published var locations : [Location]
    @Published var mapLocation : Location {
        didSet{
            updateMapRegion(location: mapLocation)
        }
    }
    @Published var mapRegion : MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    func updateMapRegion(location : Location)  {
        withAnimation(.easeOut){
        mapRegion = MKCoordinateRegion(
            center: location.coordinates,
            span: mapSpan)
        }
        
    }
    
}
