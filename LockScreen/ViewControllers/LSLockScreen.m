//
//  LSLockScreen.m
//  LockScreen
//
//  Created by Brian Turner on 1/6/14.
//  Copyright (c) 2014 SquareCodeCamp. All rights reserved.
//

#import "LSLockScreen.h"
#import "LSLockScreen+Private.h"


@interface LSLockScreen ()
@end


@implementation LSLockScreen

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)animateUnlockWithCompletion:(void(^)(BOOL finished))completionBlock;
{
    [UIView animateWithDuration:.2 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        // Animate stuff here.
    } completion:completionBlock];
}

@end
