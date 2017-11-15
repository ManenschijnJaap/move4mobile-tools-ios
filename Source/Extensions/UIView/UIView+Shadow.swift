//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

extension UIView {
    
    /**
     Add a shadow to an UIView.
     
     - Parameters:
        - color: The color of the shadow.
        - offset: The offset of the shadow.
        - opacity: The opacity of the shadow.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    public func addShadow(withColor color: UIColor = .black, offset: CGSize = CGSize(width: 0.0, height: 0.5), opacity: Float = 0.5) {
        let layer = self.layer
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offset
        layer.shadowOpacity = opacity
    }
    
}
