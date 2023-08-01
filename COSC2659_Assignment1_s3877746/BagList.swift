//
//  BagList.swift
//  COSC2659_Assignment1_s3877746
//
//  Created by mai chieu thuy on 25/07/2023.
//

import SwiftUI

struct BagList: View {
    @State var isDarkMode = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("   My Favourite 👜")
                        .font(.custom("NXBaskerville-Bold", size: 22))
                    
                    Image(systemName: isDarkMode ? "moon.fill" : "moon")
                        .resizable()
                        .offset(x: 60)
                        .frame(width: 20, height: 20)
                       .foregroundColor(isDarkMode ? .white : .black)
                       .onTapGesture {
                           isDarkMode.toggle()
                           if isDarkMode {
                               UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .dark
                           } else {
                               UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .light
                           }
                       }
                }
               
                List(bags) { bag in
                    NavigationLink {
                        BagDetailView(bag: bag)
                    } label: {
                        BagRow(bag: bag)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct BagList_Previews: PreviewProvider {
    static var previews: some View {
        BagList()
    }
}
