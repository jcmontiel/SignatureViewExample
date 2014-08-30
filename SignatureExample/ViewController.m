//
//  ViewController.m
//  SignatureExample
//
//  Created by John Montiel on 6/18/12.
//  Copyright (c) 2012 Em Sevn, LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet SignatureViewController *signatureController;
@property (strong, nonatomic) IBOutlet SignatureViewController *signatureController2;

@end

@implementation ViewController
@synthesize signatureController;
@synthesize signatureController2;


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.signatureController viewDidLoad];
    [self.signatureController2 viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [self.signatureController viewDidUnload];
    [self.signatureController2 viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) 
    {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    }
    else 
    {
        return YES;
    }
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    [signatureController willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    [signatureController2 willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
}

-  (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    [signatureController didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    [signatureController2 didRotateFromInterfaceOrientation:fromInterfaceOrientation];
}



#pragma mark SignatureViewController delegate methods
- (void) signatureViewController:(SignatureViewController *)viewController didSign:(NSData *)signatureData;
{
    NSLog(@"signatureData: %@",signatureData.description);
}


@end
