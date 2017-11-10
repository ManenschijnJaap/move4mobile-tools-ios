//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

typealias AlertCallback = () -> ()
typealias AlertChoiceCallback = (_ button: Alert.AlertButton) -> ()

class Alert {
    
    enum AlertButton {
        case ok
        case cancel
    }
    
    /**
     Show an alert with one button and without a title.
     
     - Parameters:
        - message: Optional, the message to show in the alert.
        - vc: The UIViewController to show the alert on.
     
     - Author: Jan Doornbos
     - Version: 0.1
     */
    static func show(withMessage message: String?, inViewController vc: UIViewController) {
        Alert.show(withTitle: nil, message: message, inViewController: vc)
    }
    
    /**
     Show an alert with one button and an optional title.
     
     - Parameters:
        - title: Optional, the title of the alert.
        - message: Optional, the message to show in the alert.
        - vc: The UIViewController to show the alert on.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    static func show(withTitle title: String?, message: String?, inViewController vc: UIViewController) {
        Alert.show(withTitle: title, message: message, inViewController: vc, nil)
    }
    
    /**
     Show an alert with one button and triggers a callback method.
     
     - Parameters:
        - title: Optional, the title of the alert.
        - message: Optional, the message to show in the alert.
        - vc: The UIViewController to show the alert on.
        - callback: The closure block when the user dismisses the alert.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    static func show(withTitle title: String?, message: String?, inViewController vc: UIViewController, _ callback: AlertCallback?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: NSLocalizedString("ok", comment: ""), style: .cancel, handler: { (action) in
            if let callback = callback {
                callback()
            }
        })
        alert.addAction(cancel)
        vc.present(alert, animated: true, completion: nil)
    }
    
    /**
     Show an alert with an ok and red cancel button, and triggers a callback method.
     
     - Parameters:
        - title: Optional, the title of the alert.
        - message: Optional, the message to show in the alert.
        - vc: The UIViewController to show the alert on.
        - callback: The closure block when the user dismisses the alert. Includes an enum value with the clicked button.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    static func distructiveAlert(withTitle title: String?, message: String?, inViewController vc: UIViewController, _ callback: AlertChoiceCallback?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: NSLocalizedString("ok", comment: ""), style: .destructive) { (action) in
            if let callback = callback {
                callback(.ok)
            }
        }
        let cancel = UIAlertAction(title: NSLocalizedString("cancel", comment: ""), style: .cancel, handler: { (action) in
            if let callback = callback {
                callback(.cancel)
            }
        })
        alert.addAction(cancel)
        alert.addAction(ok)
        vc.present(alert, animated: true, completion: nil)
    }
    
}
