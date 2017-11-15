//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

extension UIView {
    
    /**
     Give rounded corner to view.
     
     - Parameters:
        - radius: The radius for the corners.
     
     - Author: Jeffrey Schonewille
     - Version: 0.1
    */
    public func makeRounded(withRadius radius: CGFloat){
        self.layer.masksToBounds = true
        self.layer.cornerRadius = radius
    }
    
    /**
     Round only certain corners of a UIView.
     
     - Parameters:
        - corners: The corners to make round.
        - radius: The radius for the corners.
     
     - Author: Jeffrey Schonewille
     - Version: 0.1
    */
    public func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
