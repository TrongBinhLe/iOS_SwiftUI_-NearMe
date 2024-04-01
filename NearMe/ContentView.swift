//
//  ContentView.swift
//  NearMe
//
//  Created by admin on 25/03/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @ObservedObject private var locationManager = LocationManager()
    @State private var search: String = ""
    
    private func getNearByLandmarks() {
        guard let location = self.locationManager.location else {
            return
        }
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = self.search
        request.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        
        let search = MKLocalSearch(request: request)
        search.start { response, error in
            guard let response = response, error == nil else {
                return
            }
            
            let mapItems = response.mapItems
            mapItems.map {
                print($0.placemark)
            }
        }
    }
    
    var body: some View {
        
        ZStack(alignment: .top, content: {
            MapView()
            
            TextField("Search", text: self.$search, onEditingChanged: { _ in }) {
                self.getNearByLandmarks()
            }.textFieldStyle(RoundedBorderTextFieldStyle())
                .padding().offset(y: 44)
        })
    }
}

#Preview {
    ContentView()
}
