//
//  BagDetailView.swift
//  COSC2659_Assignment1_s3877746
//
//  Created by mai chieu thuy on 24/07/2023.
//

import SwiftUI

struct BagDetailView: View {
    var bag: Bag
    
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//
//        var btnBack : some View { Button(action: {
//            self.presentationMode.wrappedValue.dismiss()
//            }) {
//                HStack {
//                Image("go_back_icon") // set image here
//                        .resizable()
//                        .frame(width: 15, height: 15)
//                        .aspectRatio(contentMode: .fit)
////                        .foregroundColor(isDarkMode ? .white : .black)
//                Text("Back")
//                        .font(.custom("Baskervville-Regular", size: 13))
//                        .foregroundColor(.black)
//                }
//            }
//        }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: bag.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: bag.image)
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
//                Image("chanel_19_1")
//                    .resizable()
//                    .scaledToFill()
//                    .offset(y:15)
//                Image("chanel_19_2")
//                    .resizable()
//                    .scaledToFill()
//                    .offset(y:15)
//                Image("chanel_19_3")
//                    .resizable()
//                    .scaledToFill()
//                    .offset(y:15)
            }
            .padding()
        }
        .navigationTitle(bag.name)
        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarBackButtonHidden(true)
//        .navigationBarItems(leading: btnBack)
    }
}

struct BagDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BagDetailView(bag: bags[7])
    }
}
