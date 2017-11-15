//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

extension String {
    
    /**
     Check if a string contains a valid e-mailaddress.
     
     - Author: Jeffrey Schonewille
     - Version: 0.1
    */
    public var isEmail: Bool {
        do {
            let regex = try NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$", options: .caseInsensitive)
            return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count)) != nil
        } catch {
            return false
        }
    }
    
    /**
     Check if a string contains a valid phonenumber.
     
     - Author: Jeffrey Schonewille
     - Version: 0.1
    */
    public var isPhoneNumber : Bool {
        do {
            let pattern : String = "^[0-9\\s\\-\\+]{9,16}$"
            let regex = try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
            return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count)) != nil
        } catch {
            return false
        }
    }
    
    /**
     Check if a string contains a number.
     
     - Author: Jeffrey Schonewille
     - Version: 0.1
    */
    public var isNumeric : Bool {
        do {
            let pattern : String = "^[0-9]+$"
            let regex = try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
            return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count)) != nil
        } catch {
            return false
        }
    }
    
}
