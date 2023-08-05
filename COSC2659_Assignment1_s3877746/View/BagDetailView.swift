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

import SwiftUI

struct BagDetailView: View {
    var bag: Bag
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

        var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                Image("go_back_icon") // set image here
                        .resizable()
                        .frame(width: 15, height: 15)
                        .aspectRatio(contentMode: .fit)
                Text("Back")
                        .font(.custom("Baskervville-Regular", size: 13))
                        .foregroundColor(.black)
                }
            }
        }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: bag.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: Image(bag.image_name))
                .padding(.top, -150)

            VStack(alignment: .leading) {
                Text(bag.name)
                    .font(.custom("NXBaskerville-Bold", size: 20))

                HStack {
                    Text("Brand: \(bag.brand)")
                        .font(.custom("Baskervville-Regular", size: 15))
                    Spacer()
                    Text(bag.color)
                        .font(.custom("Baskervville-Regular", size: 15))
                }
                .foregroundColor(.secondary)
                
                Text("Size: \(bag.size)")
                    .font(.custom("Baskervville-Regular", size: 17))
                    .padding(.top, 1)

                Divider()

                Text("Description")
                    .font(.custom("NXBaskerville-Bold", size: 20))
                    .padding(.bottom, 5)
                Text(bag.description)
                    .font(.custom("Poppins-ExtraLight", size: 15))
                Text("   - Material: \(bag.material)")
                    .font(.custom("Poppins-ExtraLight", size: 15))
                
                ScrollView (.horizontal, showsIndicators: false){
                    HStack {
                        ForEach (bag.detail_img, id: \.self){image in
                            Image(image)
                                .resizable()
                                .frame(width: 200, height: 200)
                                .cornerRadius(17)
                        }
                    }
                }
            }
            .padding()
        }
        .navigationTitle(bag.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

struct BagDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BagDetailView(bag: bags[9])
    }
}
