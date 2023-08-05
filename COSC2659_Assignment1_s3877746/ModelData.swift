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

import Foundation

var bags: [Bag] = load("bagsData.json")

func load<T: Decodable>(_ bagsData: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: bagsData, withExtension: nil)
    else {
        fatalError("Couldn't find \(bagsData) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(bagsData) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(bagsData) as \(T.self):\n\(error)")
    }
}
