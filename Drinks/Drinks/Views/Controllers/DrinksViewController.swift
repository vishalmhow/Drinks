//
//  ViewController.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 06/04/22.
//

import UIKit

class DrinksViewController: UIViewController {
    
    @IBOutlet private weak var drinkCollectionView: UICollectionView!
    let viewModel = DrinksViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drinkCollectionView.register(UINib(nibName: Constants.headerCollectionReusableView, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: Constants.headerIdentifier)
        
        self.viewModel.getDrinksData { status, error in
            print(self.viewModel.drinkList)
            DispatchQueue.main.async {
                self.drinkCollectionView.reloadData()
            }
        }
    }
    // MARK: - Open Drink Detail
    private func openDrinkDetail(drink: Drinks) {
        
        guard let drinkDetailController = self.storyboard?.instantiateViewController(identifier: Constants.drinkDetailViewController, creator: { coder in
            return DrinkDetailViewController(coder: coder, drink: drink)
        }) else {
            return
        }
        self.navigationController?.pushViewController(drinkDetailController, animated: true)
    }
    
    
}
// MARK: -  UICollectionView Delegate and DataSource
extension DrinksViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.viewModel.drinkList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.drinkCellIdentifier, for: indexPath) as? DrinkCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configureDrinkCell(drink: self.viewModel.drinkList[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.openDrinkDetail(drink: self.viewModel.drinkList[indexPath.row])
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.drinkCollectionView.bounds.width/2) - 5, height: (self.drinkCollectionView.bounds.width/2) + 80)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: Constants.headerIdentifier, for: indexPath) as! HeaderCollectionReusableView
            return header
        }
        fatalError("Unexpected kind")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.drinkCollectionView.bounds.width, height: 135)
    }
    
}
