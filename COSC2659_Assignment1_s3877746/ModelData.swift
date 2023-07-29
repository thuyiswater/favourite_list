//
//  ModelData.swift
//  COSC2659_Assignment1_s3877746
//
//  Created by mai chieu thuy on 25/07/2023.
//

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
