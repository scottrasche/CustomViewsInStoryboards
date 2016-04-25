//
//  UIView+Extension.m
//  StackViews
//
//  Created by Rasche, Scott on 3/3/16.
//  Copyright © 2016 rasche. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (instancetype)loadNib {
    return [self loadNibNamed:nil];
}

- (instancetype)loadNibNamed:(NSString *)nibNameOrNil {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    nibNameOrNil = nibNameOrNil ? : NSStringFromClass([self class]);
        
    return [bundle loadNibNamed:nibNameOrNil owner:nil options:nil].firstObject;
}

@end
