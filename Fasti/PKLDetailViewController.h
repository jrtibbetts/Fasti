//
//  PKLDetailViewController.h
//  Fasti
//
//  Created by Jason R Tibbetts on 1/23/14.
//  Copyright (c) 2014 Poikile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PKLDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
