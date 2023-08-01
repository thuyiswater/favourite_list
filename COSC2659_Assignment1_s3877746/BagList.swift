//
//  BagList.swift
//  COSC2659_Assignment1_s3877746
//
//  Created by mai chieu thuy on 25/07/2023.
//

import SwiftUI

struct BagList: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

        var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                Image("go_back_icon") // set image here
                        .resizable()
                        .frame(width: 15, height: 15)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                Text("Back")
                        .font(.custom("Baskervville-Regular", size: 13))
                        .foregroundColor(.black)
                }
            }
        }
    
    var body: some View {
            VStack {
                Text("   My Favourite 👜")
                    .font(.custom("NXBaskerville-Bold", size: 22))
                List(bags) { bag in
                    NavigationLink {
                        BagDetailView(bag: bag)
                    } label: {
                        BagRow(bag: bag)
                    }
                    .navigationBarBackButtonHidden(true)
                    .navigationBarItems(leading: btnBack)
                }
            }
    }
}

struct BagList_Previews: PreviewProvider {
    static var previews: some View {
        BagList()
    }
}
