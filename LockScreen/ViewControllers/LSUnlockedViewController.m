//
//  LSUnlockedViewController.m
//  LockScreen
//
//  Created by Brian Turner on 1/6/14.
//  Copyright (c) 2014 SquareCodeCamp. All rights reserved.
//

#import "LSUnlockedViewController.h"
#import "LSLockScreen.h"

@interface LSUnlockedViewController ()

@end

@implementation LSUnlockedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)testLockScreen:(id)sender;
{
    LSLockScreen *lockScreen = [[LSLockScreen alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:lockScreen animated:YES completion:NULL];
}

@end
