//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

protocol StoryboardLoadable {}

extension StoryboardLoadable {
    
    private static var identifier: String { return "\(Self.self)" }
    
    /**
     Get a storyboard instance of the view controller.
     
     - Precondition: The storyboard identifier in storyboard, has to match the class name.
     
     - Returns: An instance of the view controller.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    static func storyboardInstance() -> Self {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier) as! Self
    }
    
}

extension UIViewController: StoryboardLoadable {}
