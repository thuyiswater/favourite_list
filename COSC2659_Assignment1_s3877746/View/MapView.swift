/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Mai Chieu Thuy
  ID: s3877746
  Created  date: 28/07/2023
  Last modified: 05/08/2023
  Acknowledgement: Acknowledge the resources that you use here.
*/

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var annotations: [CustomAnnotation] = []
        @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) { annotation in
            MapMarker(coordinate: annotation.coordinate, tint: .red)
                }
            .onAppear {
                setRegion(coordinate)
                setAnnotation(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
            region = MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
    
    private func setAnnotation(_ coordinate: CLLocationCoordinate2D) {
        let annotation = CustomAnnotation(coordinate: coordinate)
        annotations.append(annotation)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}

struct CustomAnnotation: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}
