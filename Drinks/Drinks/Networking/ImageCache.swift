//
//  ImageCache.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 06/04/22.
//

import Foundation
import UIKit

class ImageCache {
    
    private let imageCache = NSCache<NSString, UIImage>()
    
    // MARK: - Get Image from cache
    func getImageFromCache(imageUrl: URL) -> UIImage? {
        let imageFromCache = imageCache.object(forKey: imageUrl.absoluteString as NSString)
        return imageFromCache
    }
    // MARK: - Store Image to cache
    func storeImageInCache(downloadedImage: UIImage, imageUrl: URL) {
        imageCache.setObject(downloadedImage, forKey: imageUrl.absoluteString as NSString)
    }
}
