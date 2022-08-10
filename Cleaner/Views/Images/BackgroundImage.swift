//
//  BackgroundImage.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class BackgroundImage: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setDependHeightSize(.sixTenth, frame.height)
        self.setObjectPostion(root: frame, position: .bottomCenter)
        self.image = UIImage(named: "bubbles")
        self.contentMode = .scaleAspectFit
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
