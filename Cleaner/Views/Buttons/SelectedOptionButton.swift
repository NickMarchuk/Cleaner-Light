//
//  SelectedOptionButton.swift
//  Cleaner
//
//  Created by Nick M on 10/08/2022.
//

import UIKit

class SelectedOptionButton: UIButton {
    
    var bpath: UIBezierPath!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {
        bpath = UIBezierPath(ovalIn: self.bounds)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            let location = touch.location(in: self)
            if bpath.contains(location){
 
                NotificationCenter.default.post(name: Notification.Name("ClickButton"), object: nil, userInfo: ["tag": self.tag])
            }
        }
    }

}
