//
//  ImageDownloader.swift
//  Drinks
//
//  Created by Vishal22 Sharma on 06/04/22.
//

import Foundation
import UIKit

class ImageDownloader {
    
    static private let imageCache = ImageCache()
    private let session = URLSession.shared
    
    // MARK: - API call to Download Image for News Articles
    func downloadImageWithAsyncURLSession(imageUrl: URL) async throws -> UIImage {
        
        guard NetworkReachability.isConnectedToNetwork() else {
            throw NetworkError.noInternet
        }
        // Check If Image is avvailable in Cache
        if let imageFromCache = ImageDownloader.imageCache.getImageFromCache(imageUrl: imageUrl) {
            return imageFromCache
        }
        // Use the async variant of URLSession to fetch data
        let (data, _) = try await session.data(from: imageUrl)
        
        guard let downloadedImage = UIImage(data: data) else {
            throw NetworkError.apiFailure
        }
        ImageDownloader.imageCache.storeImageInCache(downloadedImage: downloadedImage, imageUrl: imageUrl)
        
        return downloadedImage
    }
}
