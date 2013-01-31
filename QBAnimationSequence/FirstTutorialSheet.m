//
//  FirstTutorialSheet.m
//  QBAnimationSequenceTest
//
//  Created by questbeat on 2012/09/29.
//  Copyright (c) 2012年 questbeat. All rights reserved.
//

#import "FirstTutorialSheet.h"

#import "QBAnimationSequence.h"
#import "QBAnimationGroup.h"
#import "QBAnimationItem.h"

@implementation FirstTutorialSheet

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self) {
        self.backgroundColor = [UIColor whiteColor];
        self.clipsToBounds = YES;
        
        UIImageView *view1 = [[UIImageView alloc] initWithFrame:CGRectMake(-122, 90, 60, 60)];
        view1.image = [UIImage imageNamed:@"balloon1.png"];
        [self addSubview:view1];
        
        UIImageView *view2 = [[UIImageView alloc] initWithFrame:CGRectMake(-38, 90, 60, 60)];
        view2.image = [UIImage imageNamed:@"balloon2.png"];
        [self addSubview:view2];
        
        UIImageView *view3 = [[UIImageView alloc] initWithFrame:CGRectMake(46, 90, 60, 60)];
        view3.image = [UIImage imageNamed:@"balloon3.png"];
        [self addSubview:view3];
        
        UIImageView *view4 = [[UIImageView alloc] initWithFrame:CGRectMake(130, 90, 60, 60)];
        view4.image = [UIImage imageNamed:@"balloon4.png"];
        [self addSubview:view4];
        
        UIImageView *view5 = [[UIImageView alloc] initWithFrame:CGRectMake(214, 90, 60, 60)];
        view5.image = [UIImage imageNamed:@"balloon5.png"];
        [self addSubview:view5];
        
        UIImageView *view6 = [[UIImageView alloc] initWithFrame:CGRectMake(298, 90, 60, 60)];
        view6.image = [UIImage imageNamed:@"balloon6.png"];
        [self addSubview:view6];
        
        QBAnimationGroup *ex1 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view1.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh1 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view1.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *ex2 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view2.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh2 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view2.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *ex3 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view3.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh3 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view3.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *ex4 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view4.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh4 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view4.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *ex5 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view5.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh5 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view5.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *ex6 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view6.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh6 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view6.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *move1 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
            CGRect rect1 = view1.frame;
            rect1.origin.x += 84;
            view1.frame = rect1;
            
            CGRect rect2 = view2.frame;
            rect2.origin.x += 84;
            view2.frame = rect2;
            
            CGRect rect3 = view3.frame;
            rect3.origin.x += 84;
            view3.frame = rect3;
            
            CGRect rect4 = view4.frame;
            rect4.origin.x += 84;
            view4.frame = rect4;
            
            CGRect rect5 = view5.frame;
            rect5.origin.x += 84;
            view5.frame = rect5;
            
            CGRect rect6 = view6.frame;
            rect6.origin.x += 84;
            view6.frame = rect6;
        }]];
        
        QBAnimationGroup *move2 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
            CGRect rect1 = view1.frame;
            if(rect1.origin.x > 320) rect1.origin.x = -122;
            view1.frame = rect1;
            
            CGRect rect2 = view2.frame;
            if(rect2.origin.x > 320) rect2.origin.x = -122;
            view2.frame = rect2;
            
            CGRect rect3 = view3.frame;
            if(rect3.origin.x > 320) rect3.origin.x = -122;
            view3.frame = rect3;
            
            CGRect rect4 = view4.frame;
            if(rect4.origin.x > 320) rect4.origin.x = -122;
            view4.frame = rect4;
            
            CGRect rect5 = view5.frame;
            if(rect5.origin.x > 320) rect5.origin.x = -122;
            view5.frame = rect5;
            
            CGRect rect6 = view6.frame;
            if(rect6.origin.x > 320) rect6.origin.x = -122;
            view6.frame = rect6;
        }]];
        
        [view1 release];
        [view2 release];
        [view3 release];
        [view4 release];
        [view5 release];
        [view6 release];
        
        _sequence = [[QBAnimationSequence alloc] initWithAnimationGroups:@[
                     ex4, sh4,
                     move1, move2,
                     ex3, sh3,
                     move1, move2,
                     ex2, sh2,
                     move1, move2,
                     ex1, sh1,
                     move1, move2,
                     ex6, sh6,
                     move1, move2,
                     ex5, sh5,
                     move1, move2,
                     ] repeat:YES];
        [_sequence start];
    }
    
    return self;
}

- (void)dealloc
{
    [_sequence release];
    
    [super dealloc];
}
@end
