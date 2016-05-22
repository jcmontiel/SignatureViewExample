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


- (void)viewDidLoad {
    
    [super viewDidLoad];
    if (self.signatureController)
        [self addChildViewController:self.signatureController];
    
    if (self.signatureController2)
        [self addChildViewController:self.signatureController2];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        
        return (interfaceOrientation != UIInterfaceOrientationPortrait);
    }
    else  {
        
        return YES;
    }
}

#pragma mark SignatureViewController delegate methods

- (void) signatureViewController:(SignatureViewController *)viewController didSign:(NSData *)signatureData {
    
    NSLog(@"signatureData: %@",signatureData.description);
}

- (void)didNotSignInSignatureViewController:(SignatureViewController *)viewController {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Signature" message:@"Please sign" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alertController addAction:okAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
