//
//  PKLMasterViewController.h
//  Kalendae
//
//  Created by Jason R Tibbetts on 1/20/14.
//  Copyright (c) 2014 Poikile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PKLMonthViewController;

@interface PKLYearViewController : UICollectionViewController<UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) PKLMonthViewController *detailViewController;

@end
