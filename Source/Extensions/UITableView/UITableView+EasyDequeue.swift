//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

extension UITableView {
    
    /**
     Reuse a UITableView cell.
     
     - Parameters:
        - cell: A UITableViewCell that implements the ReuseableView protocol. Example: `Cell.self`
     
     - Returns:
    Instance of the cell.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    func dequeueCell<T: ReusableView>(cell: T.Type) -> T {
        return self.dequeueReusableCell(withIdentifier: T.reuseIdentifier) as! T
    }
    
}
