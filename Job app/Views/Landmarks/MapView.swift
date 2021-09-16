//
//  MapView.swift
//  Job app
//
//  Created by Keerthi Devi Priya GAVARA on 14/08/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    let mapCenter = CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
            setRegion(coordinate)
        }
    }
    
    private func setRegion(_ cordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: mapSpan)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
