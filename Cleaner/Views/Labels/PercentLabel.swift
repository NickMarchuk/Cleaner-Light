//
//  PercentLabel.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class PercentLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setDependWidthSize(.oneToOne, frame.width)
        self.setDependHeightSize(.threeTenth, frame.height)
        self.text = "76%"
        self.font = UIFont(name: KFonts.roboto, size: 57)
        self.textColor = .white
        self.textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
