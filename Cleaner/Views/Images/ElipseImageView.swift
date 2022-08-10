//
//  ElipseImageView.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class ElipseImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setDependHeightSize(.fiveTenth, frame.height)
        self.setObjectPostion(root: frame, position: .bottomCenter)
        self.image = UIImage(named: KImages.elipse)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
