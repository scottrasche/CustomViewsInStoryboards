//
//  CustomViewOne.m
//  CustomViewsInStoryboards
//
//  Created by Rasche, Scott on 4/21/16.
//  Copyright © 2016 rasche. All rights reserved.
//

#import "CustomViewOne.h"

@implementation CustomViewOne

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.layer.borderWidth = 1.0;
}

@end
