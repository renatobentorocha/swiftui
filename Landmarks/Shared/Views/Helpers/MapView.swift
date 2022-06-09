//
//  MapView.swift
//  Landmarks
//
//  Created by Renato  Rocha on 07/06/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -22.4110563, longitude: -42.9908115), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: -22.4110563, longitude: -42.9908115))
    }
}
