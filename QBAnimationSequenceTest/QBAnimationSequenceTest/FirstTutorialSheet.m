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
        
        QBAnimationItem *ex1 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view1.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }];
        
        QBAnimationItem *sh1 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view1.transform = CGAffineTransformMakeScale(1, 1);
        }];
        
        QBAnimationItem *ex2 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view2.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }];
        
        QBAnimationItem *sh2 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view2.transform = CGAffineTransformMakeScale(1, 1);
        }];
        
        QBAnimationItem *ex3 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view3.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }];
        
        QBAnimationItem *sh3 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view3.transform = CGAffineTransformMakeScale(1, 1);
        }];
        
        QBAnimationItem *ex4 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view4.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }];
        
        QBAnimationItem *sh4 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view4.transform = CGAffineTransformMakeScale(1, 1);
        }];
        
        QBAnimationItem *ex5 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view5.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }];
        
        QBAnimationItem *sh5 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view5.transform = CGAffineTransformMakeScale(1, 1);
        }];
        
        QBAnimationItem *ex6 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view6.transform = CGAffineTransformMakeScale(1.32, 1.32);
        }];
        
        QBAnimationItem *sh6 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view6.transform = CGAffineTransformMakeScale(1, 1);
        }];
        
        QBAnimationItem *move1 = [QBAnimationItem itemWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
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
        }];
        
        QBAnimationItem *move2 = [QBAnimationItem itemWithDuration:0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
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
        }];
        
        QBAnimationGroup *group_move1 = [QBAnimationGroup groupWithItems:@[move1]];
        QBAnimationGroup *group_move2 = [QBAnimationGroup groupWithItems:@[move2]];
        QBAnimationGroup *group_ex4 = [QBAnimationGroup groupWithItems:@[ex4]];
        QBAnimationGroup *group_sh4 = [QBAnimationGroup groupWithItems:@[sh4]];
        QBAnimationGroup *group_ex3 = [QBAnimationGroup groupWithItems:@[ex3]];
        QBAnimationGroup *group_sh3 = [QBAnimationGroup groupWithItems:@[sh3]];
        QBAnimationGroup *group_ex2 = [QBAnimationGroup groupWithItems:@[ex2]];
        QBAnimationGroup *group_sh2 = [QBAnimationGroup groupWithItems:@[sh2]];
        QBAnimationGroup *group_ex1 = [QBAnimationGroup groupWithItems:@[ex1]];
        QBAnimationGroup *group_sh1 = [QBAnimationGroup groupWithItems:@[sh1]];
        QBAnimationGroup *group_ex6 = [QBAnimationGroup groupWithItems:@[ex6]];
        QBAnimationGroup *group_sh6 = [QBAnimationGroup groupWithItems:@[sh6]];
        QBAnimationGroup *group_ex5 = [QBAnimationGroup groupWithItems:@[ex5]];
        QBAnimationGroup *group_sh5 = [QBAnimationGroup groupWithItems:@[sh5]];
        
        _sequence = [[QBAnimationSequence alloc] initWithAnimationGroups:@[
                     group_ex4, group_sh4,
                     group_move1, group_move2,
                     group_ex3, group_sh3,
                     group_move1, group_move2,
                     group_ex2, group_sh2,
                     group_move1, group_move2,
                     group_ex1, group_sh1,
                     group_move1, group_move2,
                     group_ex6, group_sh6,
                     group_move1, group_move2,
                     group_ex5, group_sh5,
                     group_move1, group_move2,
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
