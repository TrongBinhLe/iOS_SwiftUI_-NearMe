//
//  MapView.swift
//  NearMe
//
//  Created by admin on 26/03/2024.
//

import Foundation
import SwiftUI
import UIKit
import MapKit


struct MapView: UIViewRepresentable {
    
    func makeCoordinator() -> Coordinator {
        Coordinator(control: self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    
}

