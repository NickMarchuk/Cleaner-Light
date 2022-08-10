//
//  CleanButton.swift
//  Cleaner
//
//  Created by Nick M on 10/08/2022.
//

import UIKit

class CleanButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame.origin = .zero
        self.addTarget(self, action: #selector(pressedButton), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func pressedButton() {
        NotificationCenter.default.post(name: Notification.Name("ClickButton"), object: nil, userInfo: ["tag": 1])
    }

}
