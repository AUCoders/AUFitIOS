//
//  workoutViewController.m
//  AU Fitness
//
//  Created by Alex Cortes on 5/27/15.
//  Copyright (c) 2015 Alex Cortes. All rights reserved.
//

#import "workoutViewController.h"

@interface workoutViewController ()

@end

@implementation workoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //get a calendar object
    NSCalendar* cal = [NSCalendar currentCalendar];
    //from that calendar get today's Weekday, Year, Month, Day
    NSDateComponents* comp = [cal components:(kCFCalendarUnitWeekday | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:[NSDate date]];
    
    //the weekday in terms of an integer
    NSInteger weekday = [comp weekday];
    //the day (1-31)
    NSInteger dayNum = [comp day];
    //the month in terms of an integer
    NSInteger monthNum = [comp month];
    //the year
    NSInteger year = [comp year];
    //the weekday in terms of a string
    NSString *day;
    //the month in terms of a string
    NSString *month;
    switch (weekday) {
        case 1:
            day = @"Sunday";
            break;
        case 2:
            day = @"Monday";
            break;
        case 3:
            day = @"Tuesday";
            break;
        case 4:
            day = @"Wednesday";
            break;
        case 5:
            day = @"Thursday";
            break;
        case 6:
            day = @"Friday";
            break;
        case 7:
            day = @"Saturday";
            break;
        default:
            NSLog(@"Error in NSCalendar");
            break;
    }
    
    switch (monthNum) {
        case 1:
            month = @"January";
            break;
        case 2:
            month = @"February";
            break;
        case 3:
            month = @"March";
            break;
        case 4:
            month = @"April";
            break;
        case 5:
            month = @"May";
            break;
        case 6:
            month = @"June";
            break;
        case 7:
            month = @"July";
            break;
        case 8:
            month = @"August";
            break;
        case 9:
            month = @"September";
            break;
        case 10:
            month = @"October";
            break;
        case 11:
            month = @"November";
            break;
        case 12:
            month = @"December";
            break;
        default:
            NSLog(@"Error in NSCalendar");
            break;
    }
    
    NSString *dateTitle = [NSString stringWithFormat:@"%@ %@ %ld %ld", day, month, dayNum, year];
    //set the title of button to today's date
    [self.dateButton setTitle: dateTitle forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
