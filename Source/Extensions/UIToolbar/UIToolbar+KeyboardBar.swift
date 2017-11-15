//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

extension UIToolbar {
    
    /**
     Get a simple toolbar with done button to attach to your keyboard.
     
     - Parameters:
        - action: The action to run when the user presses the done button.
     
     - Returns:
     An UIToolbar with a done button.
    */
    public static func keyboardBar(withAction action: Action) -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: action, action: #selector(action.action))
        
        toolbar.items = [
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
            doneButton
        ]
        toolbar.sizeToFit()
        
        return toolbar
    }
    
}
