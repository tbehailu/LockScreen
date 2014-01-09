//
//  LSLockScreen.h
//  LockScreen
//
//  Copyright (c) 2014 SquareCodeCamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSLockScreen : UIViewController

- (void)animateUnlockWithCompletion:(void(^)(BOOL finished))completionBlock;

@end
