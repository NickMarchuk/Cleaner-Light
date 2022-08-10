//
//  DuplicatePhotosView.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class DuplicatePhotosView: UIView {

    var bpath: UIBezierPath!
    let photoManager = MMPhotoManager()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setDependWidthSize(.threeTenth, frame.width)
        self.frame.size.height = self.frame.width
        self.backgroundColor = .clear
        self.setShadow()
        self.addSubview(ElipseImageView(frame: self.frame))
        

        photoManager.getNumberItemAndDuplicates(where: KAlbums.recents) { numberPhotos, numberDouble in
            self.addFiveItemsOnView(
                imageName_1: KImages.images,
                textLabel_1: "Duplicate Photos",
                textLabel_2: "\(numberPhotos) files",
                textLabel_3: "\(numberDouble.count) duplicates")
        }
        

        let button = SelectedOptionButton(frame: self.frame)
        button.tag = 3
        self.addSubview(button)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {
        bpath = UIBezierPath(ovalIn: self.bounds)
        UIColor.white.setFill()
        bpath.fill()
    }

}
