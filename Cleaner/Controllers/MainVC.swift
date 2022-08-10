//
//  ViewController.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit
import Photos
import Contacts
import PhotosUI
import LocalAuthentication

class MainVC: UIViewController {
     
    var mainView: MainView!
    var pickerController = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(pressedButton), name: NSNotification.Name("ClickButton"), object: nil)

    }
    
    @objc func pressedButton(_ notification: NSNotification) {
        if let tag = notification.userInfo?["tag"] as? Int {
            switch tag {
            case 0:
                dismiss(animated: true)
            case 1:
                
                if PHPhotoLibrary.authorizationStatus() != .authorized{
                    PHPhotoLibrary.requestAuthorization(for: .readWrite) { _ in
                        print("First Clean...")
                    }
                }else{
                    print("Clean...")
                }

            case 2:
                print("Duplicate Screenshots")
            case 3:
                print("Duplicate Photos")
            case 4:
                print("Duplicate Contacts")
                if CNContactStore.authorizationStatus(for: .contacts) != .authorized{
                    CNContactStore().requestAccess(for: .contacts) { _ , _ in }
                    print("not have")
                }else{
                    print("have")
                }
                
            case 5:
                print("Secret Storage")
                let context = LAContext()
                var error: NSError?
                
                if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
                    context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "You must give your finger or face!") { [weak self] isResult, err in
                        DispatchQueue.main.async {
                            if isResult{
                                self?.pickerController.mediaTypes = ["public.image"]
                                self?.present(self!.pickerController, animated: true)
                            }
                        }
                    }
                }
                

            case 6:
                pickerController.mediaTypes = ["public.image"]
                present(pickerController, animated: true)
                
            case 7:
                pickerController.mediaTypes = ["public.movie"]
                present(pickerController, animated: true)
            default:
                print("Unknow button")
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        ManagerSizes.topSafeArea = self.view.safeAreaInsets.top
        ManagerSizes.bottomSafeArea = self.view.safeAreaInsets.bottom
        ManagerSizes.leftSafeArea = self.view.safeAreaInsets.left
        ManagerSizes.rightSafeArea = self.view.safeAreaInsets.right
        
        mainView = MainView(frame: self.view.frame)
        self.view.addSubview(mainView)
    }
    
}

