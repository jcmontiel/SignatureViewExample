//
//  ViewController.m
//  SignatureExample
//
//  Created by John Montiel on 6/18/12.
//  Copyright (c) 2012 Em Sevn, LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *signatureView;
@property (strong, nonatomic) SignatureViewController *signatureController;

@end

@implementation ViewController
@synthesize signatureView;
@synthesize signatureController;


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.signatureController = [[SignatureViewController alloc] initWithNibName:@"SignatureView" bundle:nil];
    self.signatureController.delegate = self;
    self.signatureController.view.frame = self.signatureView.frame;
    [self.view insertSubview:self.signatureController.view belowSubview:self.signatureView];
    [self.signatureView removeFromSuperview];
    self.signatureView = self.signatureController.view;
}

- (void)viewDidUnload
{
    [self setSignatureView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
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
