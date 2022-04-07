//
//  Services.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 06/04/22.
//

import Foundation

class DrinkServices {
    private let session = URLSession.shared
    private let decoder = JSONDecoder()
    
    func fetchDrinkListWithAsyncURLSession() async throws -> [Drinks] {
        guard NetworkReachability.isConnectedToNetwork() else {
            throw NetworkError.noInternet
        }
        guard let url = URL(string: APIDetails.drinkUrl) else {
            throw NetworkError.apiFailure
        }
        
        // Use the async variant of URLSession to fetch data
        let (data, response) = try await session.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == Constants.successCode else {
            throw NetworkError.invalidStatusCode
        }
        let newsData = try decoder.decode(DrinkModel.self, from: data)
        
        return newsData.drinks
    }
}
