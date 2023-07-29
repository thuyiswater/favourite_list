//
//  BagRow.swift
//  COSC2659_Assignment1_s3877746
//
//  Created by mai chieu thuy on 25/07/2023.
//

import SwiftUI

struct BagRow: View {
    var bag: Bag
    
    var body: some View {
        HStack {
            bag.image
                .resizable()
                .frame(width: 65, height: 80)
            Text(bag.name)
                .font(.custom("Baskervville-Regular", size: 15))
            
            Spacer()
        }
    }
}

struct BagRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BagRow(bag: bags[5])
        }
    }
}
