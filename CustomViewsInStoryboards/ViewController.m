//
//  ViewController.m
//  CustomViewsInStoryboards
//
//  Created by Rasche, Scott on 4/21/16.
//  Copyright © 2016 rasche. All rights reserved.
//

#import "ViewController.h"
#import "CustomViewOne.h"
#import "UIView+Extension.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *customViewOneContainer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CustomViewOne *cv1 = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([CustomViewOne class])
                                                       owner:self
                                                     options:nil].firstObject;
    [self.customViewOneContainer addSubview:cv1];
}

@end
