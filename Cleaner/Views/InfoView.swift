//
//  InfoView.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit
import Photos

class InfoView: UIView {
    
    var bpath: UIBezierPath!
    let photoManager = MMPhotoManager()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.setDependWidthSize(.sixTenth, frame.width)
        self.frame.size.height = self.frame.width
        self.setObjectPostion(root: frame, position: .centerTopSquare, correctionY: -self.frame.height/10, isSafeArea: true)
        
        let storageLabel = YourStorageLabel(frame: self.frame)
        self.addSubview(storageLabel)
        
        let percentLabel = PercentLabel(frame: self.frame)
        percentLabel.setDependPosition(.bottom, from: storageLabel.frame)
        self.addSubview(percentLabel)
        
        let totalLabel = TotalMemoryLabel(frame: self.frame)
        totalLabel.setDependPosition(.bottom, from: percentLabel.frame)
        self.addSubview(totalLabel)
        
        let avaliableLabel = AvaliableLabel(frame: self.frame)
        avaliableLabel.setDependPosition(.bottom, from: totalLabel.frame)
        self.addSubview(avaliableLabel)
        
        let trashSizeLabel = TrashSizeLabel(frame: self.frame)
        trashSizeLabel.setDependPosition(.bottom, from: avaliableLabel.frame)
        self.addSubview(trashSizeLabel)
        

        var sizeImages = 0.0
        photoManager.getNumberItemAndDuplicates(where: KAlbums.recents) { numberPhotos, assets in
            
            assets.forEach { asset in
                PHImageManager.default().requestImage(for: asset, targetSize: .zero, contentMode: .aspectFit, options: PHImageRequestOptions()) { image, _ in
                    let represent = image?.jpegData(compressionQuality: 1)
                    sizeImages += Double(represent?.count ?? 0)/1024/1024
                    trashSizeLabel.setNewValue(value: sizeImages)
                }
            }

            
        }
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {
        self.setOvalWithBorder(bounds: self.bounds, borderSize: 2, alpha: 0.2)
    }


}
