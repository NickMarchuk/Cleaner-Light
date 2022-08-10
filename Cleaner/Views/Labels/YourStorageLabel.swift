//
//  YourStorageLabel.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class YourStorageLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.text = "Your Storage"
        self.frame.size.width = frame.width
        self.setDependHeightSize(.twoTenth, frame.height)
        self.setObjectPostion(root: frame, position: .topCenter, correctionY: 12)
        self.textAlignment = .center
        self.textColor = .white
        self.font = UIFont(name: KFonts.roboto, size: 18)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
