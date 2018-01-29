//
//  NibLoadableViewExtension.swift
//  Template
//
//  Created by cowell on 1/29/18.
//  Copyright © 2018 Other. All rights reserved.
//
import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

protocol NibLoadableView {
    
}

extension NibLoadableView where Self : UIView {
    static var NibName: String {
        return String(describing: self)
    }
}
