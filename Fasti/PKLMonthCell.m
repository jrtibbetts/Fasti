//
//  PKLMonthCell.m
//  Fasti
//
//  Created by Jason R Tibbetts on 1/28/14.
//  Copyright (c) 2014 Poikile Solutions. All rights reserved.
//

#import "PKLMonthCell.h"

@interface PKLMonthCell ()

@property (strong, nonatomic)   UIFont      *dateLabelFont;

@end


@implementation PKLMonthCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.dateViews = [NSMutableArray new];
    self.dateLabelFont = [self.monthNameLabel.font fontWithSize:12.0];
    [self resetDateLabels];
}

- (void)resetDateLabels
{
    // Remove the existing labels, if any.
    for (UIView *dateView in self.dateViews) {
        [dateView removeFromSuperview];
    }
    
    NSInteger dayCount = [self.monthInfo[@"Dies"] integerValue];
    UIView *prevView = self.monthNameLabel;
    
    for (NSInteger i = 0; i < dayCount; ++i) {
        CGRect prevRect = prevView.frame;
        UILabel *dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(prevRect.origin.x,
                                                                       prevRect.origin.y + prevRect.size.height,
                                                                       20, // prevRect.size.width,
                                                                       prevRect.size.height)];
        dateLabel.textColor = [UIColor whiteColor];
        dateLabel.text = [NSString stringWithFormat:@"%ld", (long)(i + 1)];
        dateLabel.font = self.dateLabelFont;
        [self addSubview:dateLabel];
        prevView = dateLabel;
    }
    
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.monthNameLabel.frame.size.width, prevView.frame.origin.y);
}

@end
