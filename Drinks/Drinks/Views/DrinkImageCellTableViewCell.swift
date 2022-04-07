//
//  DrinkImageCellTableViewCell.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 07/04/22.
//

import UIKit

class DrinkImageCellTableViewCell: UITableViewCell {
    @IBOutlet weak var drinkImageView: UIImageView!
    private let viewModel = DrinkImageCellViewModel()
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    // MARK: - Configure Cell
    func configureDrinkCell(drink: Drinks?) {
        viewModel.drink = drink
        self.downloadImageFromUrl()
        
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
