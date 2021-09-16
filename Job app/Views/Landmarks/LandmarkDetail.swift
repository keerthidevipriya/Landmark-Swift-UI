//
//  LandmarkDetail.swift
//  Job app
//
//  Created by Keerthi Devi Priya GAVARA on 15/08/21.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).ignoresSafeArea(edges: .top).frame( height: 300)
            
            CircleImage(image: landmark.image).offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading, spacing: nil, content: {
                HStack {
                    Text(landmark.name).font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park).font(.subheadline)
                    Spacer()
                    Text(landmark.state).font(.subheadline)
                }.font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)").font(.subheadline)
                
                Text(landmark.description).font(.subheadline)
                
            }).padding()
            
            Spacer()
            
        }.padding().navigationTitle(landmark.name).navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])//.environmentObject(modelData)
    }
}
