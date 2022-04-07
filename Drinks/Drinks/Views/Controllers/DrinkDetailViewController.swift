//
//  DrinkDetailViewController.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 07/04/22.
//

import UIKit

class DrinkDetailViewController: UIViewController {
    let viewModel = DrinkDetailViewModel()
    @IBOutlet private weak var drinkDetailTableView: UITableView!
    
    init?(coder: NSCoder, drink: Drinks) {
        self.viewModel.drink = drink
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Dependency not Implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.viewModel.drink?.strDrink
    }
}
// MARK: - UITableview Extention for its delegates and DataSource Implementation
extension DrinkDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.cellArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.drinkImageCell, for: indexPath) as? DrinkImageCellTableViewCell else {
            return UITableViewCell()
        }
        
        guard let detailCell = tableView.dequeueReusableCell(withIdentifier: Constants.drinkDetailCell, for: indexPath) as? DrinkDetailTableViewCell else {
            return UITableViewCell()
        }
        if indexPath.row == 0 {
            cell.configureDrinkCell(drink: self.viewModel.drink)
            return cell
        } else {
            detailCell.configureDrinkCell(drink: self.viewModel.drink, cellType: self.viewModel.cellArray[indexPath.row])
            return detailCell
        }
    }
    
    func tableView(_ tableView: UITableView,heightForRowAt indexPath:IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
