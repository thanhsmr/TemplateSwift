//
//  UITableViewExtension.swift
//  Template
//
//  Created by cowell on 1/29/18.
//  Copyright © 2018 Other. All rights reserved.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell> (_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let Nib = UINib.init(nibName: T.NibName, bundle: nil)
        register(Nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: NSIndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}
