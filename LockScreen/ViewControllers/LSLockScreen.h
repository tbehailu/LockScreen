//
//  LSLockScreen.h
//  LockScreen
//
//  Created by Brian Turner on 1/6/14.
//  Copyright (c) 2014 SquareCodeCamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSLockScreen : UIViewController

- (void)animateUnlockWithCompletion:(void(^)(BOOL finished))completionBlock;

@end
