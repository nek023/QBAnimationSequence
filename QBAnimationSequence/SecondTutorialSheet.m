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
        
        UIImageView *view1 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 30, 120, 180)];
        view1.image = [UIImage imageNamed:@"view_bg.png"];
        view1.clipsToBounds = YES;
        [self addSubview:view1];
        
        UIImageView *view2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 120, 180)];
        view2.image = [UIImage imageNamed:@"view_surface.png"];
        [view1 addSubview:view2];
        
        QBAnimationGroup *group1 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.3 delay:0.8 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view2.frame = CGRectMake(95, 0, 120, 180);
        }]];
        
        QBAnimationGroup *group2 = [QBAnimationGroup groupWithItem:[QBAnimationItem itemWithDuration:0.3 delay:0.8 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            view2.frame = CGRectMake(0, 0, 120, 180);
        }]];
        
        _sequence = [[QBAnimationSequence alloc] initWithAnimationGroups:@[group1, group2] repeat:YES];
        [_sequence start];
    }
    
    return self;
}

@end
