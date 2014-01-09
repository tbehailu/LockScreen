//
//  LSLockScreen.m
//  LockScreen
//
//  Copyright (c) 2014 SquareCodeCamp. All rights reserved.
//

#import "LSLockScreen.h"
#import "LSLockScreen+Private.h"


@interface LSLockScreen ()
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UIImageView *icon2;
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

- (void)viewDidAppear:(BOOL)animated
{
    
    [UIView animateWithDuration:10 animations:^{
        self.icon.frame = CGRectInset(self.icon.frame, -400, -400);
        self.icon2.frame = CGRectInset(self.icon2.frame, -300, -300);
    }];
}

@end
