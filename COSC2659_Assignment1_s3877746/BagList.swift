/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Mai Chieu Thuy
  ID: s3877746
  Created  date: 25/07/2023
  Last modified: 05/08/2023
  Acknowledgement: Acknowledge the resources that you use here.
*/

import SwiftUI

struct BagList: View {
    @State var isDarkMode = false
    @State private var searchText = ""
    
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
                        .onTapGesture { isDarkMode.toggle()
                            if isDarkMode {
                               UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .dark
                           } else {
                               UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .light
                           }
                        }
                    }
                    // Search Field
                    TextField("Search", text: $searchText)
                        .padding(.horizontal)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom, 10)
                        .cornerRadius(17)
                    
                    List(bags) { bag in
                        NavigationLink {
                            BagDetailView(bag: bag)
                        } label: {
                            BagRow(bag: bag)
                        }
                        .listRowSeparator(.hidden, edges: .all)
                        .listRowInsets(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                    }
                    .listStyle(.plain)
                }
            }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        // Set the preferred color scheme based on the user's preference
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}



struct BagList_Previews: PreviewProvider {
    static var previews: some View {
        BagList()
    }
}
