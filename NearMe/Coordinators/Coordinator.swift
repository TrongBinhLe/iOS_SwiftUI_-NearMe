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
    
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        if let annotationView = views.first {
            if let annotaion = annotationView.annotation {
                if annotaion is MKUserLocation {
                    let region  = MKCoordinateRegion(center: annotaion.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
                    mapView.setRegion(region, animated: true)
                }
            }
        } 
    }
}
