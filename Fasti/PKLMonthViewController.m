//
//  PKLDetailViewController.m
//  Kalendae
//
//  Created by Jason R Tibbetts on 1/20/14.
//  Copyright (c) 2014 Poikile Solutions. All rights reserved.
//

#import "PKLMonthViewController.h"

@implementation PKLMonthViewController

#pragma mark - Managing the detail item

- (void)configureView
{
    // Update the user interface for the detail item.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
}

@end
