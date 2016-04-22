//
//  CustomViewThree.swift
//  CustomViewsInStoryboards
//
//  Created by Rasche, Scott on 4/21/16.
//  Copyright © 2016 rasche. All rights reserved.
//

import UIKit

class CustomViewThree: UIView {

    override func awakeAfterUsingCoder(aDecoder: NSCoder) -> AnyObject? {
        if self.subviews.count == 0 {
            let customThree = loadNibNamed("CustomViewThree")
            customThree.translatesAutoresizingMaskIntoConstraints = false
            return customThree
        }
        return self;
    }

}
