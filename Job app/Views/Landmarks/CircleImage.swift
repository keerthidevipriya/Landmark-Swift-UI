//
//  CircleImage.swift
//  Job app
//
//  Created by Keerthi Devi Priya GAVARA on 14/08/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image.clipShape(Circle()).overlay(Circle().stroke(Color.gray, lineWidth: 1)).shadow(radius: 14)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarks[0].image)
    }
}
