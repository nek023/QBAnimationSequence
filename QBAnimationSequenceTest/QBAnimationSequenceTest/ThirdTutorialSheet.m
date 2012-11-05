//
//  ThirdTutorialSheet.m
//  QBAnimationSequenceTest
//
//  Created by questbeat on 2012/09/29.
//  Copyright (c) 2012年 questbeat. All rights reserved.
//

#import "ThirdTutorialSheet.h"

#import "QBAnimationSequence.h"
#import "QBAnimationGroup.h"
#import "QBAnimationItem.h"

@implementation ThirdTutorialSheet

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self) {
        self.backgroundColor = [UIColor whiteColor];
        self.clipsToBounds = YES;
        
        UIImageView *view1 = [[UIImageView alloc] initWithFrame:CGRectMake(80, 40, 160, 160)];
        view1.image = [UIImage imageNamed:@"sync.png"];
        [self addSubview:view1];
        
        UIImageView *view2 = [[UIImageView alloc] initWithFrame:CGRectMake(130, 90, 60, 60)];
        view2.image = [UIImage imageNamed:@"cloud.png"];
        [self addSubview:view2];
        
        QBAnimationItem *item1 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveLinear|UIViewAnimationOptionAllowUserInteraction animations:^{
            view1.transform = CGAffineTransformRotate(view1.transform, M_PI/4);
        }];
        
        QBAnimationItem *item2 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionAllowUserInteraction animations:^ {
            view2.transform = CGAffineTransformMakeScale(1.4, 1.4);
        }];
        
        QBAnimationItem *item3 = [QBAnimationItem itemWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^ {
            view2.transform = CGAffineTransformMakeScale(1, 1);
        }];
        
        [view1 release];
        [view2 release];
        
        QBAnimationGroup *group1 = [QBAnimationGroup groupWithItems:@[item1, item2]];
        QBAnimationGroup *group2 = [QBAnimationGroup groupWithItems:@[item1, item3]];
        
        _sequence = [[QBAnimationSequence alloc] initWithAnimationGroups:@[group1, group2] repeat:YES];
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
