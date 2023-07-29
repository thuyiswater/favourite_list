//
//  ContentView.swift
//  COSC2659_Assignment1_s3877746
//
//  Created by mai chieu thuy on 18/07/2023.
//

import SwiftUI
import UIKit

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.24, green: 0.05, blue: 0.11)
                    .edgesIgnoringSafeArea(.all)
                //diamond logo
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .foregroundColor(.accentColor)
                        .padding(.bottom, 12.0)
                        
                   Text("CLASSY BABY")
                       .font(.custom("NXBaskerville-Bold", size: 30))
                       .multilineTextAlignment(.center)
                       .padding(.bottom, 13.0)
                       .overlay {
                           LinearGradient(
                                colors: [.pink, .yellow],
                                startPoint: .leading,
                                endPoint: .trailing
                           )
                           .mask(
                            Text("CLASSY BABY")
                                .font(.custom("NXBaskerville-Bold", size: 30))
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 7.0)
                           )
                        }
                    Text("A girl should be two things: Classy & Fabulous")
                        .font(.custom("Baskervville-Regular", size: 17))
                        .multilineTextAlignment(.center)
                        .overlay {
                            LinearGradient(
                                 colors: [.pink, .yellow],
                                 startPoint: .leading,
                                 endPoint: .trailing
                            )
                            .mask(
                             Text("A girl should be two things: Classy & Fabulous")
                                 .font(.custom("Baskervville-Regular", size: 17))
                                 .multilineTextAlignment(.center)
                            )
                        }
                }
                
                //button move on to items list
                NavigationLink{
                    BagList()
                } label: {
                    Text("Let's Go!")
                        .font(.custom("NXBaskerville-Bold", size: 17))
                        .foregroundColor(.black)
                        .frame(width: 150, height: 50)
                        .background(Color(red: 1.00, green: 0.76, blue: 0.82))
                        .cornerRadius(15)
                        .padding(.bottom, 50.0)
                }.frame(maxHeight: .infinity, alignment: .bottom)
                
                //button of author info
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink{
                            AuthorView()
                        }label: {
                            Image("info_icon")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding(.trailing, 18.0)
                        }
                    }
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
