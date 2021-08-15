//
//  Landmark.swift
//  Job app
//
//  Created by Keerthi Devi Priya GAVARA on 15/08/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }
}
