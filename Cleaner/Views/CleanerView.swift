//
//  CleanerView.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class CleanerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setDependWidthSize(.threeTenth, frame.width)
        self.frame.size.height = 30
        self.setObjectPostion(root: frame, position: .topRight, isSafeArea: true)
        
        let image = UIImageView()
        image.image = UIImage(named: KImages.broom)
        image.setDependWidthSize(.threeTenth, self.frame.width)
        image.setDependHeightSize(.oneToOne, self.frame.height)
        image.setObjectPostion(root: self.frame, position: .topLeft)
        image.contentMode = .scaleAspectFit
        self.addSubview(image)
        
        let label = UILabel()
        label.text = "CLEANER"
        label.textColor = .white
        label.font = UIFont(name: KFonts.roboto, size: 14)
        label.setDependWidthSize(.sevenTenth, self.frame.width)
        label.setDependHeightSize(.oneToOne, self.frame.height)
        label.setDependPosition(.right, from: image.frame, correctionX: 4)
        self.addSubview(label)
        
        self.addSubview(CleanButton(frame: self.frame))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
