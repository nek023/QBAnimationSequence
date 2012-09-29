//
//  ViewController.h
//  QBAnimationSequenceTest
//
//  Created by questbeat on 2012/09/29.
//  Copyright (c) 2012年 questbeat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (retain, nonatomic) IBOutlet UIScrollView *tutorialView;
@property (retain, nonatomic) IBOutlet UIPageControl *pageControl;

@end
