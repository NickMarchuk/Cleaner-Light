//
//  Extesions+UI.swift
//  Cleaner
//
//  Created by Nick M on 09/08/2022.
//

import UIKit

extension UIView{
    
    func setObjectPostion(root:CGRect, position: MMObjectPosition, correctionX: CGFloat = .zero, correctionY: CGFloat = .zero, isSafeArea:Bool = false){
        
        let width = self.frame.width
        let height = self.frame.height
        
        if isSafeArea{
            let topSafeArea = ManagerSizes.topSafeArea
            let bottomSafeArea = ManagerSizes.bottomSafeArea
            let leftSafeArea = ManagerSizes.leftSafeArea
            let rightSafeArea = ManagerSizes.rightSafeArea
            
            switch position {
            case .center:
                self.frame.origin.x = root.width/2 - width/2
                self.frame.origin.y = root.height/2 - height/2
            case .topCenter:
                self.frame.origin.x = root.width/2 - width/2
                self.frame.origin.y = .zero + topSafeArea + correctionY
            case .bottomCenter:
                self.frame.origin.x = root.width/2 - width/2 - correctionX
                self.frame.origin.y = root.height - height - bottomSafeArea
            case .topLeft:
                self.frame.origin.x = leftSafeArea + correctionX
                self.frame.origin.y = topSafeArea + correctionY
            case .topRight:
                self.frame.origin.x = root.width - width - correctionX - rightSafeArea
                self.frame.origin.y = topSafeArea + correctionY
            case .centerTopSquare:
                self.frame.origin.x = root.width/2 - width/2
                self.frame.origin.y = (root.height/2)/2 - height/2
            case .centerBottomSquare:
                self.frame.origin.x = root.width/2 - width/2
                self.frame.origin.y = root.height/2 + height/2 - bottomSafeArea
            }
        }else{
            switch position {
            case .center:
                self.frame.origin.x = root.width/2 - width/2
                self.frame.origin.y = root.height/2 - height/2
            case .topCenter:
                self.frame.origin.x = root.width/2 - width/2
                self.frame.origin.y = correctionY
            case .bottomCenter:
                self.frame.origin.x = root.width/2 - width/2 - correctionX
                self.frame.origin.y = root.height - height
            case .topLeft:
                self.frame.origin.x = correctionX
                self.frame.origin.y = correctionY
            case .topRight:
                self.frame.origin.x = root.width - width - correctionX
                self.frame.origin.y = correctionY
            case .centerTopSquare:
                self.frame.origin.x = root.width/2 - width/2
                self.frame.origin.y = (root.height/2)/2 - self.frame.height/2 + correctionY
            case .centerBottomSquare:
                self.frame.origin.x = root.width/2 - width/2
                self.frame.origin.y = root.height/2 + height/2
            }
        }

    }
    
    func setDependWidthSize(_ size:MMDependObjectSize,_ rootWidth:CGFloat){
        switch size{
        case .oneToOne:
            self.frame.size.width = rootWidth
        case .oneTenth:
            self.frame.size.width = rootWidth*(1.0/10.0)
        case .twoTenth:
            self.frame.size.width = rootWidth*(2.0/10.0)
        case .threeTenth:
            self.frame.size.width = rootWidth*(3.0/10.0)
        case .fourTenth:
            self.frame.size.width = rootWidth*(4.0/10.0)
        case .fiveTenth:
            self.frame.size.width = rootWidth*(5.0/10.0)
        case .sixTenth:
            self.frame.size.width = rootWidth*(6.0/10.0)
        case .sevenTenth:
            self.frame.size.width = rootWidth*(7.0/10.0)
        case .eightTenth:
            self.frame.size.width = rootWidth*(8.0/10.0)
        case .nineTenth:
            self.frame.size.width = rootWidth*(9.0/10.0)
        case .twoTwentieth:
            self.frame.size.width = rootWidth*(2.0/20.0)
        case .threeTwentieth:
            self.frame.size.width = rootWidth*(3.0/20.0)
        }
    }
    
    func setDependHeightSize(_ size:MMDependObjectSize,_ rootHeight:CGFloat){
        switch size{
        case .oneToOne:
            self.frame.size.height = rootHeight
        case .oneTenth:
            self.frame.size.height = rootHeight*(1.0/10.0)
        case .twoTenth:
            self.frame.size.height = rootHeight*(2.0/10.0)
        case .threeTenth:
            self.frame.size.height = rootHeight*(3.0/10.0)
        case .fourTenth:
            self.frame.size.height = rootHeight*(4.0/10.0)
        case .fiveTenth:
            self.frame.size.height = rootHeight*(5.0/10.0)
        case .sixTenth:
            self.frame.size.height = rootHeight*(6.0/10.0)
        case .sevenTenth:
            self.frame.size.height = rootHeight*(7.0/10.0)
        case .eightTenth:
            self.frame.size.height = rootHeight*(8.0/10.0)
        case .nineTenth:
            self.frame.size.height = rootHeight*(9.0/10.0)
        case .twoTwentieth:
            self.frame.size.height = rootHeight*(2.0/20.0)
        case .threeTwentieth:
            self.frame.size.height = rootHeight*(3.0/20.0)
        }
    }

    
    func setDependPosition(_ position:MMDependPosition, from item: CGRect, correctionX: CGFloat = .zero, correctionY: CGFloat = .zero){
        
        switch position{
        case .top:
            self.frame.origin.x = item.origin.x
            self.frame.origin.y = item.minY - self.frame.height
        case .bottom:
            self.frame.origin.x = item.origin.x + correctionX
            self.frame.origin.y = item.maxY + correctionY
        case .left:
            self.frame.origin.x = item.minX - self.frame.width
            self.frame.origin.y = item.origin.y + correctionY
        case .right:
            self.frame.origin.x = item.maxX + correctionX
            self.frame.origin.y = item.origin.y + correctionY
        case .bottomCenter:
            self.frame.origin.x = item.origin.x + (item.width/2 - self.frame.width/2)
            self.frame.origin.y = item.maxY + correctionY
        }
    }
    
    func setFixedSize(_ size: MMFixedObjectSize){
        switch size {
        case .w12_h6_46:
            self.frame.size = CGSize(width: 12, height: 6.46)
        case .w20_h20:
            self.frame.size = CGSize(width: 20, height: 20)
        case .w25_h25:
            self.frame.size = CGSize(width: 25, height: 25)
        case .w30_h30:
            self.frame.size = CGSize(width: 30, height: 30)
        case .w35_h35:
            self.frame.size = CGSize(width: 35, height: 35)
        case .w40_h40:
            self.frame.size = CGSize(width: 40, height: 40)
        case .w45_h45:
            self.frame.size = CGSize(width: 45, height: 45)
        case .w20_h30:
            self.frame.size = CGSize(width: 20, height: 30)
        case .w20_h40:
            self.frame.size = CGSize(width: 20, height: 40)
        case .w30_h40:
            self.frame.size = CGSize(width: 30, height: 40)
        case .w30_h50:
            self.frame.size = CGSize(width: 30, height: 50)
        case .w40_h50:
            self.frame.size = CGSize(width: 40, height: 50)
        case .w40_h60:
            self.frame.size = CGSize(width: 40, height: 60)
        case .w50_h60:
            self.frame.size = CGSize(width: 50, height: 60)
        case .w50_h70:
            self.frame.size = CGSize(width: 50, height: 70)
        case .w50_h50:
            self.frame.size = CGSize(width: 50, height: 50)
        }
    }
    
    func setOvalWithBorder(bounds: CGRect, borderSize: CGFloat = .zero, alpha: CGFloat = .zero){
        let bpath = UIBezierPath(ovalIn: self.bounds)
        UIColor.lightGray.setFill()
        bpath.fill(with: .darken, alpha: alpha)
        let layer = CAShapeLayer()
        layer.path = bpath.cgPath
        layer.lineWidth = borderSize
        layer.strokeColor = UIColor.white.cgColor
        layer.fillColor = CGColor(gray: 0, alpha: 0)
        self.layer.addSublayer(layer)
    }
    
    func addFiveItemsOnView(imageName_1:String, textLabel_1:String, textLabel_2:String, textLabel_3:String){
        let image_1 = UIImageView()
        image_1.image = UIImage(named: imageName_1)
        image_1.contentMode = .scaleAspectFit
        image_1.setDependWidthSize(.oneToOne, self.frame.width)
        image_1.setDependHeightSize(.twoTenth, self.frame.height)
        image_1.setObjectPostion(root: self.frame, position: .topCenter, correctionY: 8)
        self.addSubview(image_1)
        
        let label_1 = UILabel()
        label_1.text = textLabel_1
        label_1.setDependWidthSize(.nineTenth, self.frame.width)
        label_1.setDependHeightSize(.oneTenth, self.frame.height)
        label_1.setDependPosition(.bottomCenter, from: image_1.frame, correctionY: 8)
        label_1.textColor = UIColor(named: KColors.background)
        label_1.font = UIFont(name: KFonts.roboto, size: 12)
        label_1.adjustsFontSizeToFitWidth = true
        label_1.textAlignment = .center
        self.addSubview(label_1)
        
        let image_2 = UIImageView()
        image_2.image = UIImage(named: KImages.chevronDown)
        image_2.setFixedSize(.w12_h6_46)
        image_2.setObjectPostion(root: self.frame, position: .center)
        self.addSubview(image_2)
        
        let label_2 = UILabel()
        label_2.text = textLabel_2
        label_2.setDependWidthSize(.oneToOne, self.frame.width)
        label_2.setDependHeightSize(.oneTenth, self.frame.height)
        label_2.setDependPosition(.bottomCenter, from: image_2.frame,correctionY: 12)
        label_2.textColor = .white
        label_2.font = UIFont(name: KFonts.roboto, size: 15)
        label_2.adjustsFontSizeToFitWidth = true
        label_2.textAlignment = .center
        self.addSubview(label_2)
        
        let label_3 = UILabel()
        label_3.text = textLabel_3
        label_3.setDependWidthSize(.oneToOne, self.frame.width)
        label_3.setDependHeightSize(.oneTenth, self.frame.height)
        label_3.setDependPosition(.bottomCenter, from: label_2.frame)
        label_3.textColor = UIColor(named: KColors.darkGray)
        label_3.font = UIFont(name: KFonts.roboto, size: 9)
        label_3.adjustsFontSizeToFitWidth = true
        label_3.textAlignment = .center
        self.addSubview(label_3)
    }
    
    func addThreeItemsOnView(imageName:String, textLabel_1:String, textLabel_2:String){
        let image = UIImageView()
        image.image = UIImage(named: imageName)
        image.contentMode = .scaleAspectFit
        image.setDependWidthSize(.oneToOne, self.frame.width)
        image.setDependHeightSize(.threeTenth, self.frame.height)
        image.setObjectPostion(root: self.frame, position: .centerTopSquare, correctionY: self.frame.height/10)
        self.addSubview(image)
        
        let label_1 = UILabel()
        label_1.text = textLabel_1.uppercased()
        label_1.setDependWidthSize(.nineTenth, self.frame.width)
        label_1.setDependHeightSize(.oneTenth, self.frame.height)
        label_1.setDependPosition(.bottomCenter, from: image.frame, correctionY: 12)
        label_1.textColor = UIColor(named: KColors.background)
        label_1.font = UIFont(name: KFonts.roboto, size: 13)
        label_1.adjustsFontSizeToFitWidth = true
        label_1.textAlignment = .center
        self.addSubview(label_1)
        
        let label_2 = UILabel()
        label_2.text = textLabel_2.uppercased()
        label_2.setDependWidthSize(.nineTenth, self.frame.width)
        label_2.setDependHeightSize(.oneTenth, self.frame.height)
        label_2.setDependPosition(.bottomCenter, from: label_1.frame)
        label_2.textColor = UIColor(named: KColors.background)
        label_2.font = UIFont(name: KFonts.roboto, size: 13)
        label_2.adjustsFontSizeToFitWidth = true
        label_2.textAlignment = .center
        self.addSubview(label_2)
    }
    
    func setShadow() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 5
    }
    
}
