//
//  LSAppDelegate.m
//  LockScreen
//
//  Copyright (c) 2014 SquareCodeCamp. All rights reserved.
//

#import "LSAppDelegate.h"

#import "LSUnlockedViewController.h"

@implementation LSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    LSUnlockedViewController *unlockedViewController = [[LSUnlockedViewController alloc] initWithNibName:nil bundle:nil];
    [[self window] setRootViewController:unlockedViewController];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
