/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Mai Chieu Thuy
  ID: s3877746
  Created  date: 24/07/2023
  Last modified: 05/08/2023
  Acknowledgement: Acknowledge the resources that you use here.
*/

import Foundation
import CoreLocation

struct Bag: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var brand: String
    var size: String
    var color: String
    var material: String
    var description: String
    
    var image_name: String
    
    var detail_img: Array<String>
 
    
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
