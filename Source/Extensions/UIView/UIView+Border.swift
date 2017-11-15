//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

extension UIView {
    
    /**
     Add a border on an UIView.
     
     - Parameters:
        - color: The color of the border.
        - width: The width of the border.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    public func addBorder(withColor color: UIColor, andWidth width: CGFloat = 1.0) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width / UIScreen.main.scale
        self.layer.masksToBounds = true
    }
    
}
