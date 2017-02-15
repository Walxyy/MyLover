//
//  ViewController.m
//  wenbaobao
//
//  Created by walxyy on 2016/12/5.
//  Copyright © 2016年 Zhl. All rights reserved.
//

#import "ViewController.h"
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *timeLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 100)];
    timeLabel.textColor = [UIColor redColor];
    [self.view addSubview:timeLabel];
    
    NSDate *dateNow = [NSDate date];
    NSLog(@"%@",dateNow);
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyyMMddHHmmss"];
    
    NSDate *dateStart = [formatter dateFromString:@"20150521000000"];
    
    NSTimeInterval total = [dateNow timeIntervalSinceDate:dateStart];
    
    int dateNum = ((int)total)/24/3600+1;
  
//DateCandler
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    [gregorian setFirstWeekday:2];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *startDate = [dateFormatter dateFromString:@"2015-05-21 00:00:00"];
    NSDate *nowDate = [NSDate date];
    NSDateComponents *dayComponents = [gregorian components:NSCalendarUnitDay fromDate:startDate toDate:nowDate options:0];
    // dayComponents.day  即为间隔的天数 565
//    int dateNum = dayComponents.day+1;

    
    timeLabel.text = [NSString stringWithFormat:@"%d",dateNum];
    
    
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
