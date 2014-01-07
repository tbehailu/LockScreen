//
//  LSLockScreen.m
//  LockScreen
//
//  Created by Brian Turner on 1/6/14.
//  Copyright (c) 2014 SquareCodeCamp. All rights reserved.
//

#import "LSLockScreen.h"

@interface LSLockScreen ()

@end

@implementation LSLockScreen

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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
    // Do any additional setup after loading the view from its nib.
}

- (void)_unlockSucceded;
{
    [[self presentingViewController] dismissViewControllerAnimated:YES completion:NULL];
}

- (void)_unlockFailed;
{
    [[[UIAlertView alloc] initWithTitle:@"FAILED!!!!" message:@"SUCK LESS" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil] show];
}

@end
