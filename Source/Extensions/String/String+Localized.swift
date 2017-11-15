//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

extension String {
    
    /**
     Localize a string the easy way.
     
     - Parameters:
        - comment: Optional, comment
     
     - Author: Jeffrey Schonewille
     - Version: 0.1
    */
    public func localized(comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
}
