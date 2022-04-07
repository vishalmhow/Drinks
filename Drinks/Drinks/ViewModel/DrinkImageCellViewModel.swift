//
//  DrinkImageCellViewModel.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 07/04/22.
//

import UIKit

class DrinkImageCellViewModel: NSObject {
    var drink: Drinks?
    private var service: ImageDownloader? = ImageDownloader()
    typealias serviceHandler = ((UIImage?) -> Void)
    
    convenience init(service: ImageDownloader?) {
        self.init()
        self.service = service
    }
    // MARK: - Download Image from Url
    func downloadImageFromUrl(completion: @escaping(serviceHandler)) {
        Task {
            do {
                if let imageUrl = URL(string: self.drink?.strDrinkThumb ?? "") {
                    let downloadedImage = try await service?.downloadImageWithAsyncURLSession(imageUrl: imageUrl) as UIImage?
                    completion(downloadedImage ?? UIImage())
                } else {
                    completion(nil)
                }
            } catch {
                completion(nil)
            }
        }
    }
    
}
