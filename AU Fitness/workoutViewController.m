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
    NSInteger dayNum = [comp day];
    //the weekday in terms of a string
    NSString *day;
    
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
    
    //set the title of button to today's date
    [self.dateButton setTitle:(@"Today lol") forState:UIControlStateNormal];
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
