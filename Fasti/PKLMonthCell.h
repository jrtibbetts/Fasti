//
//  PKLMonthCell.h
//  Fasti
//
//  Created by Jason R Tibbetts on 1/28/14.
//  Copyright (c) 2014 Poikile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PKLMonthCell : UICollectionViewCell

@property (strong, nonatomic)   IBOutlet UILabel    *monthNameLabel;
@property (strong, nonatomic)   NSDictionary        *monthInfo;

@end
