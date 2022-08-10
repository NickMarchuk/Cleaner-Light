//
//  AllPhotosView.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class AllPhotosView: UIView {

    var bpath: UIBezierPath!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setDependWidthSize(.threeTenth, frame.width)
        self.frame.size.height = self.frame.width
        self.backgroundColor = .clear
        self.setShadow()
        
        self.addThreeItemsOnView(
            imageName: KImages.allPhotos,
            textLabel_1: "all",
            textLabel_2: "photos")
        
        let button = SelectedOptionButton(frame: self.frame)
        button.tag = 6
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
