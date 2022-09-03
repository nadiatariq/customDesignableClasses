//
//  RoundView.swift
//  IBDesignable Prectice Code
//
//  Created by sameeltariq on 03/09/2022.
//

import Foundation
import UIKit
@IBDesignable class RoundView: UIView{
    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
        gradientLayer.frame = bounds
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        gradientLayer.frame = bounds
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
    }
    func setupView() {
        self.firstColor = UIColor.red
        self.secondColor = UIColor.yellow
        self.color = UIColor.purple
         self.layer.cornerRadius = cornerRadius
         self.layer.shadowColor = shadowColor.cgColor
         self.layer.shadowRadius = shadowRadius
         self.layer.shadowOpacity = shadowOpacity
         self.layer.borderWidth = borderWidth
         self.layer.borderColor = borderColor.cgColor
     }    //=====================================================//
    
    @IBInspectable var firstColor : UIColor = .red
     
    @IBInspectable var secondColor : UIColor = .yellow
   
    var gradientLayer: CAGradientLayer  {
        let layer = CAGradientLayer()
        layer.colors = [firstColor.cgColor , secondColor.cgColor]
        layer.startPoint = CGPoint.zero
        return layer
    }
    @IBInspectable var shadowColor: UIColor = .black{
        didSet{
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    @IBInspectable var color: UIColor = .white{
        didSet{
            self.layer.backgroundColor = color.cgColor
        }
    }
    @IBInspectable   var shadowRadius : CGFloat = 20 {
        didSet{
            self.layer.shadowRadius = shadowRadius
        }
    }

    @IBInspectable  var cornerRadius: CGFloat = 100{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable  var shadowOpacity : Float = 10{
        didSet{
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    @IBInspectable  var borderWidth : CGFloat = 1{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    @IBInspectable   var borderColor : UIColor = .white{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
}

