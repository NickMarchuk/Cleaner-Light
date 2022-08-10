//
//  MMPhotoManager.swift
//  Cleaner
//
//  Created by Nick M on 10/08/2022.
//

import UIKit
import Photos

struct MMPhotoManager{
    
    func getNumberItemAndDuplicates(where albumName: String, _ handler: @escaping (Int, [PHAsset]) -> Void){

        var itemDuplicates: [PHAsset] = []

        let albumsPhoto:PHFetchResult<PHAssetCollection> = PHAssetCollection.fetchAssetCollections(with: .smartAlbum, subtype: .albumRegular, options: nil)
        
        albumsPhoto.enumerateObjects({(collection, index, object) in
            if collection.localizedTitle == albumName{
                let items = PHAsset.fetchAssets(in: collection, options: nil)
                items.enumerateObjects { asset, index, _ in
                    if index > 0 && asset.creationDate == items[index - 1].creationDate  {
                        itemDuplicates.append(asset)
                    }
                }
                handler(items.count, itemDuplicates)
            }
        })
    }
}


