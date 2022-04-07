//
//  DrinkCollectionViewCell.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 06/04/22.
//

import UIKit

class DrinkCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var drinkImageView: UIImageView!
    @IBOutlet weak var drinkNameLabel: UILabel!
    private let viewModel = DrinkCellViewModel()
    
    // MARK: - Configure Cell
    func configureDrinkCell(drink: Drinks?) {
        viewModel.drink = drink
        self.drinkNameLabel.text = drink?.strDrink
        downloadImageFromUrl()
    }
    // MARK: - Download Image
    private func downloadImageFromUrl() {
        self.viewModel.downloadImageFromUrl { [weak self] (drinkImage) in
            DispatchQueue.main.async {
                self?.drinkImageView.image = drinkImage
            }
        }
    }
}
