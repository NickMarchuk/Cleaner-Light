//
//  MainView.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

class MainView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(named: KColors.background)
        
        self.addSubview(BackgroundImage(frame: frame))
        
        let infoView = InfoView(frame: frame)
        self.addSubview(infoView)
        
        self.addSubview(BackButton(frame: frame))
        
        let dupScreenView = DuplicateScreenshotsView(frame: frame)
        dupScreenView.setDependPosition(.bottomCenter, from: infoView.frame, correctionY: 20)
        self.addSubview(dupScreenView)
        
        let dupPhotosView = DuplicatePhotosView(frame: frame)
        dupPhotosView.setDependPosition(.left, from: dupScreenView.frame, correctionY: dupPhotosView.frame.height/2)
        self.addSubview(dupPhotosView)
        
        let dupContactsView = DuplicateContactsView(frame: frame)
        dupContactsView.setDependPosition(.right, from: dupScreenView.frame, correctionY: dupContactsView.frame.height/2)
        self.addSubview(dupContactsView)
        
        let secretStorageView = SecretStorageView(frame: frame)
        secretStorageView.setDependPosition(.bottom, from: dupScreenView.frame, correctionY: 20)
        self.addSubview(secretStorageView)
        
        let allPhotosView = AllPhotosView(frame: frame)
        allPhotosView.setDependPosition(.bottom, from: secretStorageView.frame, correctionX: -allPhotosView.frame.width/1.6)
        self.addSubview(allPhotosView)
        
        let allVideosView = AllVideosView(frame: frame)
        allVideosView.setDependPosition(.bottom, from: secretStorageView.frame, correctionX: allPhotosView.frame.width/1.6)
        self.addSubview(allVideosView)
        
        self.addSubview(CleanerView(frame: frame))
    }
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
