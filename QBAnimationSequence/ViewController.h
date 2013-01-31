//
//  ViewController.h
//  QBAnimationSequence
//
//  Created by Katsuma Tanaka on 2013/01/31.
//  Copyright (c) 2013年 Katsuma Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (retain, nonatomic) IBOutlet UIScrollView *tutorialView;
@property (retain, nonatomic) IBOutlet UIPageControl *pageControl;

@end