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
        
        _view1 = [[UIImageView alloc] initWithFrame:CGRectMake(-122, 90, 60, 60)];
        _view1.image = [UIImage imageNamed:@"balloon1.png"];
        [self addSubview:_view1];
        
        _view2 = [[UIImageView alloc] initWithFrame:CGRectMake(-38, 90, 60, 60)];
        _view2.image = [UIImage imageNamed:@"balloon2.png"];
        [self addSubview:_view2];
        
        _view3 = [[UIImageView alloc] initWithFrame:CGRectMake(46, 90, 60, 60)];
        _view3.image = [UIImage imageNamed:@"balloon3.png"];
        [self addSubview:_view3];
        
        _view4 = [[UIImageView alloc] initWithFrame:CGRectMake(130, 90, 60, 60)];
        _view4.image = [UIImage imageNamed:@"balloon4.png"];
        [self addSubview:_view4];
        
        _view5 = [[UIImageView alloc] initWithFrame:CGRectMake(214, 90, 60, 60)];
        _view5.image = [UIImage imageNamed:@"balloon5.png"];
        [self addSubview:_view5];
        
        _view6 = [[UIImageView alloc] initWithFrame:CGRectMake(298, 90, 60, 60)];
        _view6.image = [UIImage imageNamed:@"balloon6.png"];
        [self addSubview:_view6];
        
        QBAnimationGroup *ex1 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view1.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh1 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view1.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *ex2 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view2.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh2 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view2.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *ex3 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view3.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh3 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view3.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *ex4 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view4.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh4 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view4.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *ex5 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view5.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh5 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view5.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *ex6 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view6.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }]];
        
        QBAnimationGroup *sh6 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view6.transform = CGAffineTransformMakeScale(1, 1);
        }]];
        
        QBAnimationGroup *move1 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
            CGRect rect1 = _view1.frame;
            rect1.origin.x += 84;
            _view1.frame = rect1;
            
            CGRect rect2 = _view2.frame;
            rect2.origin.x += 84;
            _view2.frame = rect2;
            
            CGRect rect3 = _view3.frame;
            rect3.origin.x += 84;
            _view3.frame = rect3;
            
            CGRect rect4 = _view4.frame;
            rect4.origin.x += 84;
            _view4.frame = rect4;
            
            CGRect rect5 = _view5.frame;
            rect5.origin.x += 84;
            _view5.frame = rect5;
            
            CGRect rect6 = _view6.frame;
            rect6.origin.x += 84;
            _view6.frame = rect6;
        }]];
        
        QBAnimationGroup *move2 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
            CGRect rect1 = _view1.frame;
            if(rect1.origin.x > 320) rect1.origin.x = -122;
            _view1.frame = rect1;
            
            CGRect rect2 = _view2.frame;
            if(rect2.origin.x > 320) rect2.origin.x = -122;
            _view2.frame = rect2;
            
            CGRect rect3 = _view3.frame;
            if(rect3.origin.x > 320) rect3.origin.x = -122;
            _view3.frame = rect3;
            
            CGRect rect4 = _view4.frame;
            if(rect4.origin.x > 320) rect4.origin.x = -122;
            _view4.frame = rect4;
            
            CGRect rect5 = _view5.frame;
            if(rect5.origin.x > 320) rect5.origin.x = -122;
            _view5.frame = rect5;
            
            CGRect rect6 = _view6.frame;
            if(rect6.origin.x > 320) rect6.origin.x = -122;
            _view6.frame = rect6;
        }]];
        
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
    
    [_view1 release];
    [_view2 release];
    [_view3 release];
    [_view4 release];
    [_view5 release];
    [_view6 release];
    
    [super dealloc];
}
@end
