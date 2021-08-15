//
//  MapView.swift
//  Job app
//
//  Created by Keerthi Devi Priya GAVARA on 14/08/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    let mapCenter = CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
