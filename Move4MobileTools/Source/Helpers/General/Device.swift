//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

class Device {
    
    /**
     Get the screen width of the device.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    /**
     Get the screen height of the device.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.size.height
    }

}
