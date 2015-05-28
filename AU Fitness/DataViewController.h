//
//  DataViewController.h
//  AU Fitness
//
//  Created by Alex Cortes on 5/26/15.
//  Copyright (c) 2015 Alex Cortes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UINavigationItem *topBar;
@property (strong, nonatomic) id dataObject;
@property (strong, nonatomic) IBOutlet UIButton *workoutButton;
@property (strong, nonatomic) IBOutlet UIButton *historyButton;
@property (strong, nonatomic) IBOutlet UIButton *graphButton;
@property (strong, nonatomic) IBOutlet UIButton *videoButton;

@end

