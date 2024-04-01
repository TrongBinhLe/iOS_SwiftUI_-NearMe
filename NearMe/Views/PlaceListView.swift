//
//  PlaceListView.swift
//  NearMe
//
//  Created by admin on 01/04/2024.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let landmarks: [Landmark]
    var onTap: () -> () // Definr closure func
    
    var body: some View {
        VStack {
            HStack{
                EmptyView()
            }.frame(width: UIScreen.main.bounds.size.width, height: 60).background(Color.blue)
                .gesture(TapGesture().onEnded(self.onTap))
            
            List(self.landmarks, id: \.id) { landmark in
                Text(landmark.name)
            }
        }
    }
}

#Preview {
    PlaceListView(
        landmarks: [Landmark(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D()))], onTap: { })
}
