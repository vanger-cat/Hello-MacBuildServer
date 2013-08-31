//
//  IGViewController.m
//  SimpleApp
//
//  Created by Vanger on 06.02.13.
//  Copyright (c) 2013 XP.Guild. All rights reserved.
//

#import "IGViewController.h"

@interface IGViewController ()

@end

@implementation IGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.helloLabel setText:NSLocalizedString(@"Hello", @"")];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_helloLabel release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setHelloLabel:nil];
    [super viewDidUnload];
}
@end
