//
//  DuplicateContactsView.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class DuplicateContactsView: UIView {

    var bpath: UIBezierPath!
    let contactManager = MMContactManager()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setDependWidthSize(.threeTenth, frame.width)
        self.frame.size.height = self.frame.width
        self.backgroundColor = .clear
        self.setShadow()
        self.addSubview(ElipseImageView(frame: self.frame))
        
        contactManager.getNumberContactsAndDuplicates { numberContacts, numberDuplicates in
            self.addFiveItemsOnView(
                imageName_1: KImages.contacts,
                textLabel_1: "Duplicate Contacts",
                textLabel_2: "\(numberContacts) files",
                textLabel_3: "\(numberDuplicates) duplicates")
        }
        
        let button = SelectedOptionButton(frame: self.frame)
        button.tag = 4
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
