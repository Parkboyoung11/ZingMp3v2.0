//
//  Extension.swift
//  ZingMp3v2.0
//
//  Created by VuHongSon on 12/12/17.
//  Copyright © 2017 VuHongSon. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIView {
    func addContraintsWithFormat(format: String , views : UIView...) {
        var viewsDictionary = [String : UIView]()
        for (index , view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
