//
//  SecondTutorialSheet.m
//  QBAnimationSequenceTest
//
//  Created by questbeat on 2012/09/29.
//  Copyright (c) 2012年 questbeat. All rights reserved.
//

#import "SecondTutorialSheet.h"

#import "QBAnimationSequence.h"
#import "QBAnimationGroup.h"
#import "QBAnimationItem.h"

@implementation SecondTutorialSheet

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self) {
        self.backgroundColor = [UIColor whiteColor];
        self.clipsToBounds = YES;
        
        _view1 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 30, 120, 180)];
        _view1.image = [UIImage imageNamed:@"view_bg.png"];
        _view1.clipsToBounds = YES;
        [self addSubview:_view1];
        
        _view2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 120, 180)];
        _view2.image = [UIImage imageNamed:@"view_surface.png"];
        [_view1 addSubview:_view2];
        
        QBAnimationItem *item1 = [QBAnimationItem itemWithDuration:0.3 delay:0.8 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view2.frame = CGRectMake(95, 0, 120, 180);
        }];
        
        QBAnimationItem *item2 = [QBAnimationItem itemWithDuration:0.3 delay:0.8 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            _view2.frame = CGRectMake(0, 0, 120, 180);
        }];
        
        QBAnimationGroup *group1 = [QBAnimationGroup groupWithItems:@[item1]];
        QBAnimationGroup *group2 = [QBAnimationGroup groupWithItems:@[item2]];
        
        _sequence = [[QBAnimationSequence alloc] initWithAnimationGroups:@[group1, group2] repeat:YES];
        [_sequence start];
    }
    
    return self;
}

- (void)dealloc
{
    [_sequence release];
    
    [_view1 release];
    [_view2 release];
    
    [super dealloc];
}

@end
