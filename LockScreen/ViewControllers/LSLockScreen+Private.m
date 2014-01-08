//
//  LSLockScreen+Private.m
//  LockScreen
//
//  Created by Brian Turner on 1/6/14.
//  Copyright (c) 2014 SquareCodeCamp. All rights reserved.
//

#import "LSLockScreen+Private.h"

@implementation LSLockScreen (Private)

- (void)_unlockSucceded;
{
    [self animateUnlockWithCompletion:^(BOOL finished) {
        [[self presentingViewController] dismissViewControllerAnimated:YES completion:NULL];
    }];
}

- (void)_unlockFailed;
{
    [[[UIAlertView alloc] initWithTitle:@"FAILED!!!!" message:@"SUCK LESS" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil] show];
}

@end
