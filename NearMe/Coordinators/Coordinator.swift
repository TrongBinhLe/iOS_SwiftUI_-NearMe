//
//  Coordinator.swift
//  NearMe
//
//  Created by admin on 26/03/2024.
//

import Foundation
import MapKit

final class Coordinator: NSObject, MKMapViewDelegate {
    var control: MapView
    
    init(control: MapView) {
        self.control = control
    }
}
