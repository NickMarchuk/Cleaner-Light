//
//  SecretStorageView.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class SecretStorageView: UIView {

    var bpath: UIBezierPath!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setDependWidthSize(.threeTenth, frame.width)
        self.frame.size.height = self.frame.width
        self.backgroundColor = .clear
        self.setShadow()
        
        self.addThreeItemsOnView(
            imageName: KImages.finger,
            textLabel_1: "secret",
            textLabel_2: "storage")
        
        let button = SelectedOptionButton(frame: self.frame)
        button.tag = 5
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
