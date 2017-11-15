//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

public protocol ReusableView {}

extension ReusableView {
    
    /**
     The reuseidentifier of this cell. Make sure your cell in Storyboard/Nib has the exact same reuse identifier as the class name.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    public static var reuseIdentifier: String {
        get {
            return String(describing: self)
        }
    }
    
}

extension UITableViewCell: ReusableView {}
extension UICollectionViewCell: ReusableView {}
