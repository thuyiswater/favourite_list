//
//  AuthorView.swift
//  COSC2659_Assignment1_s3877746
//
//  Created by mai chieu thuy on 20/07/2023.
//

import SwiftUI

struct AuthorView: View {
    var body: some View {
        ZStack{
            Color(red: 0.95, green: 0.72, blue: 0.69)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("author")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding(.bottom, 11.0)
                    .frame(width: 200, height: 300)
                    
                
                Text("Name: Mai Chieu Thuy\nID: s387746\nProgram: COSC2659 - IOS Development")
                    .multilineTextAlignment(.center)
                    .font(.custom("Poppins-Regular", size: 17))
                    .foregroundColor(Color(red: 0.56, green: 0.46, blue: 0.63))
                    .padding(.top, 10.0)
            }
        }
       
    }
}

struct AuthorView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorView()
    }
}
