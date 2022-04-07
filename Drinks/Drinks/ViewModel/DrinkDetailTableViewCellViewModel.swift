//
//  DrinkDetailTableViewCellViewModel.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 07/04/22.
//

import UIKit

// MARK: - DrinkDetailTableViewCellViewModel
class DrinkDetailTableViewCellViewModel: NSObject {
    func getIngredientsString(drink: Drinks) -> String {
        var ingredientStr = ""
        if let strIngredient1 = drink.strIngredient1 {
            ingredientStr = strIngredient1
        }
        if let strIngredient2 = drink.strIngredient2 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient2)"
        }
        
        if let strIngredient3 = drink.strIngredient3 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient3)"
        }
        if let strIngredient4 = drink.strIngredient4 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient4)"
        }
        if let strIngredient5 = drink.strIngredient5 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient5)"
        }
        if let strIngredient6 = drink.strIngredient6 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient6)"
        }
        if let strIngredient7 = drink.strIngredient7 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient7)"
        }
        if let strIngredient8 = drink.strIngredient8 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient8)"
        }
        if let strIngredient9 = drink.strIngredient9 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient9)"
        }
        if let strIngredient10 = drink.strIngredient10 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient10)"
        }
        if let strIngredient11 = drink.strIngredient11 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient11)"
        }
        if let strIngredient12 = drink.strIngredient12 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient12)"
        }
        if let strIngredient13 = drink.strIngredient13 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient13)"
        }
        if let strIngredient14 = drink.strIngredient14 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient14)"
        }
        if let strIngredient15 = drink.strIngredient5 {
            ingredientStr = "\(ingredientStr)\n\(strIngredient15)"
        }
        
        return ingredientStr
    }
    
    func getInstructionsString(drink: Drinks) -> String {
        var instuctionsStr = ""
        
        if let strInstructions = drink.strInstructions {
            instuctionsStr = strInstructions
        }
        if let strInstructionsES = drink.strInstructionsES {
            instuctionsStr = "\(instuctionsStr)\n\(strInstructionsES)"
        }
        if let strInstructionsDE = drink.strInstructionsDE {
            instuctionsStr = "\(instuctionsStr)\n\(strInstructionsDE)"
        }
        if let strInstructionsFR = drink.strInstructionsFR {
            instuctionsStr = "\(instuctionsStr)\n\(strInstructionsFR)"
        }
        if let strInstructionsIT = drink.strInstructionsIT {
            instuctionsStr = "\(instuctionsStr)\n\(strInstructionsIT)"
        }
        if let strInstructionsZH_hans = drink.strInstructionsZH_hans {
            instuctionsStr = "\(instuctionsStr)\n\(strInstructionsZH_hans)"
        }
        if let strInstructionsZH_hant = drink.strInstructionsZH_hant {
            instuctionsStr = "\(instuctionsStr)\n\(strInstructionsZH_hant)"
        }
        return instuctionsStr
    }
    
    func getMeasureString(drink: Drinks) -> String {
        var measureStr = ""
        
        if let strMeasure1 = drink.strMeasure1 {
            measureStr = strMeasure1
        }
        if let strMeasure2 = drink.strMeasure2 {
            measureStr = "\(measureStr)\n\(strMeasure2)"
        }
        
        if let strMeasure3 = drink.strMeasure3 {
            measureStr = "\(measureStr)\n\(strMeasure3)"
        }
        if let strMeasure4 = drink.strMeasure4 {
            measureStr = "\(measureStr)\n\(strMeasure4)"
        }
        if let strMeasure5 = drink.strMeasure5 {
            measureStr = "\(measureStr)\n\(strMeasure5)"
        }
        if let strMeasure6 = drink.strMeasure6 {
            measureStr = "\(measureStr)\n\(strMeasure6)"
        }
        if let strMeasure7 = drink.strMeasure7 {
            measureStr = "\(measureStr)\n\(strMeasure7)"
        }
        if let strMeasure8 = drink.strMeasure8 {
            measureStr = "\(measureStr)\n\(strMeasure8)"
        }
        if let strMeasure9 = drink.strMeasure9 {
            measureStr = "\(measureStr)\n\(strMeasure9)"
        }
        if let strMeasure10 = drink.strMeasure10 {
            measureStr = "\(measureStr)\n\(strMeasure10)"
        }
        if let strMeasure11 = drink.strMeasure11 {
            measureStr = "\(measureStr)\n\(strMeasure11)"
        }
        if let strMeasure12 = drink.strMeasure12 {
            measureStr = "\(measureStr)\n\(strMeasure12)"
        }
        if let strMeasure13 = drink.strMeasure13 {
            measureStr = "\(measureStr)\n\(strMeasure13)"
        }
        if let strMeasure14 = drink.strMeasure14 {
            measureStr = "\(measureStr)\n\(strMeasure14)"
        }
        if let strMeasure15 = drink.strMeasure15 {
            measureStr = "\(measureStr)\n\(strMeasure15)"
        }
        return measureStr
    }
}
