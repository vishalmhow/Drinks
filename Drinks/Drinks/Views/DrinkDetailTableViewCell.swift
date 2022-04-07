//
//  DrinkDetailTableViewCell.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 07/04/22.
//

import UIKit

class DrinkDetailTableViewCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var detailLabel: UILabel!
    let viewModel = DrinkDetailTableViewCellViewModel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    // MARK: - Configure Cell
    func configureDrinkCell(drink: Drinks?, cellType: DrinkCellType) {
        switch cellType {
        case .instructions:
            self.titleLabel.text = "Instructions"
            if let drink = drink {
                self.detailLabel.text = self.viewModel.getInstructionsString(drink: drink)
            }
        case .ingredients:
            self.titleLabel.text = "Ingredients"
            if let drink = drink {
                self.detailLabel.text = self.viewModel.getIngredientsString(drink: drink)
            }
        case .measure:
            self.titleLabel.text = "Measure"
            if let drink = drink {
                self.detailLabel.text = self.viewModel.getMeasureString(drink: drink)
            }
        case .category:
            self.titleLabel.text = "Category"
            self.detailLabel.text = drink?.strCategory
        default:
            print("nothing")
        }
    }
}
