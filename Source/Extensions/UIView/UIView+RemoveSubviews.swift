//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

extension UIView {
    
    /**
     Remove all the subviews from a UIView.
     
     - Author: Jeffrey Schonewille
     - Version: 0.1
    */
    public func removeAllSubviews() {
        self.subviews.forEach { $0.removeFromSuperview()}
    }
    
}
