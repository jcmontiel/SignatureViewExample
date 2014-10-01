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
    [self addChildViewController:self.signatureController];
    [self addChildViewController:self.signatureController2];
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

#pragma mark SignatureViewController delegate methods
- (void) signatureViewController:(SignatureViewController *)viewController didSign:(NSData *)signatureData;
{
    NSLog(@"signatureData: %@",signatureData.description);
}


@end
