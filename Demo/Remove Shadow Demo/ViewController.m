//
//  ViewController.m
//  Remove Shadow Demo
//
//  Created by Mark Rickert on 6/15/12.
//  Copyright (c) 2012 Mohawk Apps, LLC. All rights reserved.
//

#import "ViewController.h"
#import "UIWebView+RemoveShadow.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [nonShadowedWebView removeShadow]; //This is where the magic happens.

    NSString *urlAddress = @"http://www.google.com";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    [nonShadowedWebView loadRequest:requestObj];
    [shadowedWebView loadRequest:requestObj];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
