//
//  DrinksViewModel.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 06/04/22.
//

import Foundation

class DrinksViewModel: NSObject {
    var drinkList: [Drinks] = []
    private var service: DrinkServices? = DrinkServices()
    typealias drinkHandler = ((Bool, Error?) -> Void)
    
    // MARK: - Get Drink List
    func getDrinksData(completion: @escaping(drinkHandler)) {
        Task {
            do {
                drinkList = try await service?.fetchDrinkListWithAsyncURLSession() ?? []
                completion(true, nil)
            } catch {
                completion(false, error)
                print(error.localizedDescription)
            }
        }
    }
}
