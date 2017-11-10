//
//  Created by Jan Doornbos on 09-11-17.
//  Copyright © 2017 Move4Mobile. All rights reserved.
//

import UIKit

protocol NibLoadable {}

extension NibLoadable where Self: UIView {
    
    /**
     Load a view from a nib file. Make sure the nib file has the exact same name.
     
     - returns:
     The view
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    static func loadFromNib() -> Self {
        return Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?.first as! Self
    }
    
    /**
     Adds the view from the nib as a fullscreen view to a view. It matches the size of the parent.
     
     - Parameters:
        - view: The view to add the view to.
        - aboveView: Optional, if you want to place this view above a certain view.
     
     - Author: Jan Doornbos
     - Version: 0.1
    */
    func add(toView view: UIView, aboveView: UIView? = nil) {
        self.translatesAutoresizingMaskIntoConstraints = false
        if let aboveView = aboveView {
            view.insertSubview(self, aboveSubview: aboveView)
        } else {
            view.addSubview(self)
        }
        
        var constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options: [], metrics: nil, views: [ "view" : self ])
        view.addConstraints(constraints)
        constraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options: [], metrics: nil, views: [ "view" : self ])
        view.addConstraints(constraints)
    }
    
}
