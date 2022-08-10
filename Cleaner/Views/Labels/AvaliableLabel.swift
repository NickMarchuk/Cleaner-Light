//
//  AvaliableLabel.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class AvaliableLabel: UILabel {
    
    let valueManager = MMValueManager()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setDependWidthSize(.oneToOne, frame.width)
        self.setDependHeightSize(.oneTenth, frame.height)
        self.font = UIFont(name: KFonts.roboto, size: 11)
        self.textAlignment = .center
        self.text = "Avaliable: \(valueManager.getAvaliableMemory) GB"
        self.textColor = .white
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
