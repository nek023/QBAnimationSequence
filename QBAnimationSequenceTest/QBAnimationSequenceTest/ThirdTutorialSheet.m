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
        
        _view1 = [[UIImageView alloc] initWithFrame:CGRectMake(80, 40, 160, 160)];
        _view1.image = [UIImage imageNamed:@"sync.png"];
        [self addSubview:_view1];
        
        _view2 = [[UIImageView alloc] initWithFrame:CGRectMake(130, 90, 60, 60)];
        _view2.image = [UIImage imageNamed:@"cloud.png"];
        [self addSubview:_view2];
        
        QBAnimationItem *item1 = [[[QBAnimationItem alloc] initWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveLinear|UIViewAnimationOptionAllowUserInteraction animations:^{
            _view1.transform = CGAffineTransformRotate(_view1.transform, M_PI/4);
        }] autorelease];
        
        QBAnimationItem *item2 = [[QBAnimationItem alloc] initWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionAllowUserInteraction animations:^ {
            _view2.transform = CGAffineTransformMakeScale(1.4, 1.4);
        }];
        
        QBAnimationItem *item3 = [[QBAnimationItem alloc] initWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^ {
            _view2.transform = CGAffineTransformMakeScale(1, 1);
        }];
        
        QBAnimationGroup *group1 = [[[QBAnimationGroup alloc] initWithItems:@[item1, item2]] autorelease];
        QBAnimationGroup *group2 = [[[QBAnimationGroup alloc] initWithItems:@[item1, item3]] autorelease];
        
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
