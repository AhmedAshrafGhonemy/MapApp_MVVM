//
//  LocationViewModel.swift
//  MapAppMVVM
//
//  Created by AhmedAshraf on 03/01/2022.
//

import Foundation

class LocationViewModel : ObservableObject {
    
    @Published var locations : [Location]
    
    init(){
        locations = LocationsDataService.locations
        self.locations = locations
    }
    
}
