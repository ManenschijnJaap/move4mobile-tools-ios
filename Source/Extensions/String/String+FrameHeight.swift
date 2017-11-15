//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

extension String {
    
    /**
     Get the height of the text contraint to a certain width and when used with a certain font.
     
     - Parameters:
        - width: The width in which the text has to fit.
        - font: The font the string needs to use.
     
     - Returns:
     The height for the frame.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    public func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [
            NSAttributedStringKey.font: font
        ], context: nil)
        return ceil(boundingBox.height)
    }
    
    /**
     Get the width of the text contraint to a certain height and when used with a certain font.
     
     - Parameters:
        - height: The height in which the text has to fit.
        - font: The font the string needs to use.
     
     - Returns:
     The width for the frame.
     
     - Author: Jan Doornbos
     - Version: 0.1
     */
    public func width(withConstraintedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [
            NSAttributedStringKey.font: font
        ], context: nil)
        return ceil(boundingBox.width)
    }
    
}

