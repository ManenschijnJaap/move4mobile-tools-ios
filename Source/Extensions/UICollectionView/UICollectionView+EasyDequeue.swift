//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    /**
     Reuse a UICollectionView cell.
     
     - Parameters:
     - cell: A UICollectionViewCell that implements the ReuseableView protocol. Example: `Cell.self`
     
     - Returns:
     Instance of the cell.
     
     - Author: Jan Doornbos
     - Version: 0.1
     */
    func dequeueCell<T: ReusableView>(cell: T.Type, atIndexPath indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withReuseIdentifier: cell.reuseIdentifier, for: indexPath) as! T
    }
    
}
