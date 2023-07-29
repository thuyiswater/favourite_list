//
//  Bags.swift
//  COSC2659_Assignment1_s3877746
//
//  Created by mai chieu thuy on 24/07/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Bag: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var brand: String
    var size: String
    var color: String
    var material: String
    var description: String
    
    private var image_name: String
       var image: Image {
           Image(image_name)
       }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }

        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
}