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

struct BagRow: View {
    var bag: Bag
    
    var body: some View {
        HStack {
            Image(bag.image_name)
                .resizable()
                .frame(width: 65, height: 90)
            Text(bag.name)
                .font(.custom("Baskervville-Regular", size: 15))
            
            Spacer()
        }
    }
}

struct BagRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BagRow(bag: bags[0])
        }
    }
}
