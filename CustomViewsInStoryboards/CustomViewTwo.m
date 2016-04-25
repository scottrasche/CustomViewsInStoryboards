//
//  CustomViewTwo.m
//  CustomViewsInStoryboards
//
//  Created by Rasche, Scott on 4/21/16.
//  Copyright © 2016 rasche. All rights reserved.
//

#import "CustomViewTwo.h"
#import "UIView+Extension.h"

@interface CustomViewTwo()

@property (strong, nonatomic) IBOutlet UIView *view;

@end

@implementation CustomViewTwo

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSString *className = NSStringFromClass([self class]);
        self.view = [[NSBundle mainBundle] loadNibNamed:className
                                                  owner:self
                                                options:nil].firstObject;
        // you need to set the view's frame to match the parent's size before adding to the parent - or else a lot of constraint complaints
        self.view.frame = self.bounds;
        [self addSubview:self.view];
    }
    return self;
}

@end
