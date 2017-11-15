//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

public class App {
    
    /**
     App version (CFBundleShortVersionString)
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    public static var version: String {
        get {
            if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
                return version
            } else {
                return EMPTY_STRING
            }
        }
    }
    
    /**
     Build version (CFBundleVersion)
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    public static var build: String {
        get {
            if let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
                return build
            } else {
                return EMPTY_STRING
            }
        }
    }
    
    /**
     The bundle identifier.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    public static var bundleIdentifier: String {
        get {
            if let bundleId = Bundle.main.bundleIdentifier {
                return bundleId
            } else {
                return EMPTY_STRING
            }
        }
    }

}
