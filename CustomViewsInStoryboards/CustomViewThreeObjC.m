//
//  CustomViewThreeObjC.m
//  CustomViewsInStoryboards
//
//  Created by Rasche, Scott on 4/25/16.
//  Copyright © 2016 rasche. All rights reserved.
//

#import "CustomViewThreeObjC.h"
#import "UIView+Extension.h"

IB_DESIGNABLE
@implementation CustomViewThreeObjC

- (instancetype)awakeAfterUsingCoder:(NSCoder *)aDecoder {
    
    //loadNibNamed will call initWithCoder - which will call this - etc.
    //to avaoid infinite loop - check to see if view is loaded
    if (self.subviews.count == 0) {
        CustomViewThreeObjC *myView = [self loadNibNamed:@"CustomViewThree"];
        myView.translatesAutoresizingMaskIntoConstraints = NO;
        
        return myView;
    }
    return self;
}

// Storyboard IB Designable calls initWithFrame - not used when running on
// device or simulator
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        CustomViewThreeObjC *myView = [self loadNibNamed:@"CustomViewThree"];
        myView.translatesAutoresizingMaskIntoConstraints = NO;
        return myView;
    }
    return self;
}

@end
