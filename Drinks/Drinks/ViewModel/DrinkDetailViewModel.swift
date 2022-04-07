//
//  DrinkDetailViewModel.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 07/04/22.
//

import Foundation

enum DrinkCellType {
    case drinkImage
    case instructions
    case ingredients
    case measure
    case category
}
// MARK: - DrinkDetailViewModel
class DrinkDetailViewModel: NSObject {
    let cellArray = [DrinkCellType.drinkImage, DrinkCellType.instructions, DrinkCellType.ingredients, DrinkCellType.measure, DrinkCellType.category]
    var drink: Drinks?
    
}
