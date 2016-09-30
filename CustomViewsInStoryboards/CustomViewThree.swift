//
//  CustomViewThree.swift
//  CustomViewsInStoryboards
//
//  Created by Rasche, Scott on 4/21/16.
//  Copyright © 2016 rasche. All rights reserved.
//

import UIKit

@IBDesignable
class CustomViewThree: UIView {
    
    override func awakeAfter(using aDecoder: NSCoder) -> Any? {
        //loadNibNamed will call initWithCoder - which will call this - etc.
        //to avaoid infinite loop - check to see if view is loaded
        if self.subviews.count == 0 {
            let customThree = loadNibNamed("CustomViewThree")
            customThree?.translatesAutoresizingMaskIntoConstraints = self.translatesAutoresizingMaskIntoConstraints
            return customThree
        }
        return self;
    }

    // Storyboard IB Designable calls initWithFrame - not used when running on
    // device or simulator
    override init(frame: CGRect) {
        super.init(frame: frame)
        if self.subviews.count == 0 {
            let customThree = loadNibNamed("CustomViewThree")
            customThree?.frame = self.frame
            customThree?.translatesAutoresizingMaskIntoConstraints = self.translatesAutoresizingMaskIntoConstraints
            self.addSubview(customThree!)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
