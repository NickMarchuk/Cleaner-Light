//
//  BackButton.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class BackButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setTitle("", for: .normal)
        self.setImage(UIImage(named: KImages.arrowToLeft), for: .normal)
        self.setFixedSize(.w50_h50)
        self.setObjectPostion(root: frame, position: .topLeft, correctionX: 12, isSafeArea: true)
        self.addTarget(self, action: #selector(pressedButton), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func pressedButton() {
        NotificationCenter.default.post(name: Notification.Name("ClickButton"), object: nil, userInfo: ["tag": 0])
    }

}
