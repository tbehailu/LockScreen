//
//  LSUnlockedViewController.m
//  LockScreen
//
//  Copyright (c) 2014 SquareCodeCamp. All rights reserved.
//

#import "LSUnlockedViewController.h"
#import "LSLockScreen.h"

@interface LSUnlockedViewController ()

@property CGPoint startLocation;
#define minDistance 200
@property (weak, nonatomic) IBOutlet UIImageView *redButton;
@property CGPoint buttonStartLocation;
@property (weak, nonatomic) IBOutlet UIView *slideRegion;
@property (weak, nonatomic) IBOutlet UITextField *textBox;
#define password @"doge"

@end

@implementation LSUnlockedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        // attempt 1: swipe
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
        [self.view addGestureRecognizer:panGesture];
        self.buttonStartLocation = self.redButton.center;
        self.slideRegion.layer.cornerRadius = 20;
        self.textBox.alpha = 0;
        
        
    }
    return self;
}

- (IBAction)testLockScreen:(id)sender;
{
    LSLockScreen *lockScreen = [[LSLockScreen alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:lockScreen animated:YES completion:NULL];
}


- (void) handlePan: (UIPanGestureRecognizer *)gestureRecognizer
{
    // get start location
    if (gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        self.startLocation = [gestureRecognizer locationInView:self.view];
    } else if (gestureRecognizer.state == UIGestureRecognizerStateChanged) {
        // compare locations
        CGPoint cur = [gestureRecognizer locationInView:self.view];
        self.redButton.center = CGPointMake(cur.x, self.redButton.center.y);
        if (cur.x-self.startLocation.x >= minDistance) {
            [self.textBox becomeFirstResponder];
            
            [UIView animateWithDuration:.7 animations:^{
                self.slideRegion.alpha = 0;
                self.textBox.alpha = 1;
            }];

        }
    } else if (gestureRecognizer.state == UIGestureRecognizerStateEnded) {
        [UIView animateWithDuration:.3 animations:^{
            self.redButton.center = self.buttonStartLocation;
        }];
        
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ([self.textBox.text isEqualToString:password]){
        [self testLockScreen:self];
        return YES;
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Wrong! Try Again!" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    return NO;
}

@end
