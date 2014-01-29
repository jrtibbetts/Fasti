//
//  PKLMasterViewController.m
//  Kalendae
//
//  Created by Jason R Tibbetts on 1/20/14.
//  Copyright (c) 2014 Poikile Solutions. All rights reserved.
//

#import "PKLYearViewController.h"
#import "PKLMonthCell.h"
#import "PKLMonthViewController.h"

@interface PKLYearViewController ()

@property (strong, nonatomic)   NSMutableArray      *months;

@end

@implementation PKLYearViewController

- (void)awakeFromNib
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.clearsSelectionOnViewWillAppear = NO;
        self.preferredContentSize = CGSizeMake(320.0, 600.0);
    }
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Load calendar data.
    NSString *calendarPlistPath = [[NSBundle mainBundle] pathForResource:@"Fasti" ofType:@"plist"];
    self.months = [NSMutableArray arrayWithArray:[NSArray arrayWithContentsOfFile:calendarPlistPath]];
    self.collectionView.dataSource = self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        //        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        //        NSDate *object = self.months[indexPath.row];
        //        [[segue destinationViewController] setDetailItem:object];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Collection view data source

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    return self.months.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PKLMonthCell *monthCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MonthCell"
                                                                        forIndexPath:indexPath];
    NSDictionary *monthInfo = self.months[indexPath.row];
    monthCell.monthNameLabel.text = monthInfo[@"Nomen"];
    
    return monthCell;
}

@end
