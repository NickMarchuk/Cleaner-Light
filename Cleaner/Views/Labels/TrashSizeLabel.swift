//
//  TrashSizeLabel.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class TrashSizeLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setDependWidthSize(.oneToOne, frame.width)
        self.setDependHeightSize(.oneTenth, frame.height)
        self.font = UIFont(name: KFonts.roboto, size: 11)
        self.textAlignment = .center
        self.text = "Trash size: 470 MB"
        self.textColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setNewValue(value:Double){
        let formatedValue = String(format: "%.0f", value)
        self.text = "Trash size: \(formatedValue) MB"
    }
}
