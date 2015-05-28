//
//  ModelController.h
//  AU Fitness
//
//  Created by Alex Cortes on 5/26/15.
//  Copyright (c) 2015 Alex Cortes. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end

