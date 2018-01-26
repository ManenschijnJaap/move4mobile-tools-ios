//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

public protocol StoryboardLoadable {}

extension StoryboardLoadable {
    
    private static var identifier: String { return "\(Self.self)" }
    
    /**
     Get a storyboard instance of the view controller.
     
     - Precondition: The storyboard identifier in storyboard, has to match the class name.
     
     - Returns: An instance of the view controller.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    public static func storyboardInstance() -> Self {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier) as! Self
    }
    
    /**
     Get a storyboard instance of the view controller from a defined storyboard.
     
     - Precondition: The storyboard identifier in storyboard, has to match the class name.
     
     - Returns: An instance of the view controller.
     
     - Parameters:
        - storyboard: The file name of the storyboard.
     
     - Author: Jan Doornbos
     - Version: 0.4
    */
    public static func storyboardInstance(fromStoryboard storyboard: String) -> Self {
        return UIStoryboard(name: storyboard, bundle: nil).instantiateViewController(withIdentifier: identifier) as! Self
    }
    
}

extension UIViewController: StoryboardLoadable {}
