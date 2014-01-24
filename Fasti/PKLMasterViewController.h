//
//  PKLMasterViewController.h
//  Fasti
//
//  Created by Jason R Tibbetts on 1/23/14.
//  Copyright (c) 2014 Poikile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PKLDetailViewController;

@interface PKLMasterViewController : UITableViewController

@property (strong, nonatomic) PKLDetailViewController *detailViewController;

@end
