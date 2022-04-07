//
//  APIHandler.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 06/04/22.
//

import Foundation

// MARK: - Enum for error handling
enum NetworkError: Error {
    case noInternet
    case apiFailure
    case invalidStatusCode
    case decodingError
}
// MARK: - declared required urls
struct APIDetails {
    static let drinkUrl = "https://thecocktaildb.com/api/json/v1/1/search.php?s=mojito"
}
