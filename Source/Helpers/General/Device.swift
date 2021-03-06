//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

public class Device {
    
    /**
     Get the screen width of the device.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    public static var screenWidth: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    /**
     Get the screen height of the device.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    public static var screenHeight: CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    /**
     Is the current device an iPad.
     
     - Author: Jan Doornbos
     - Version: 0.3
    */
    public static var isiPad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    /**
     Is the current device an iPhone.
     
     - Author: Jan Doornbos
     - Version: 0.3
    */
    public static var isiPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }

}
