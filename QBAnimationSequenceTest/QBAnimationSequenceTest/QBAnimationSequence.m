//
//  QBAnimationSequence.m
//  QBAnimationSequenceTest
//
//  Created by questbeat on 2012/09/29.
//  Copyright (c) 2012年 questbeat. All rights reserved.
//

#import "QBAnimationSequence.h"

#import "QBAnimationGroup.h"
#import "QBAnimationItem.h"

@implementation QBAnimationSequence

@synthesize groups = _groups;
@synthesize repeat = _repeat;

- (id)init
{
    self = [super init];
    
    if(self) {
        self.groups = nil;
        self.repeat = NO;
    }
    
    return self;
}

- (id)initWithAnimationGroups:(NSArray *)groups
{
    self = [self init];
    
    if(self) {
        self.groups = groups;
    }
    
    return self;
}

- (id)initWithAnimationGroups:(NSArray *)groups repeat:(BOOL)repeat
{
    self = [self init];
    
    if(self) {
        self.groups = groups;
        self.repeat = repeat;
    }
    
    return self;
}

- (void)start
{
    _currentGroup = -1;
    _finishedCount = 0;
    
    [self nextGroup];
}

- (void)nextGroup
{
    if(_currentGroup >= (NSInteger)(self.groups.count - 1)) {
        if(self.repeat) {
            [self start];
        }
        
        return;
    }
    
    _currentGroup++;
    
    QBAnimationGroup *group = (QBAnimationGroup *)[self.groups objectAtIndex:_currentGroup];
    
    for(NSInteger i = 0; i < group.items.count; i++) {
        QBAnimationItem *item = (QBAnimationItem *)[group.items objectAtIndex:i];
        
        if(group.waitUntilDone) {
            [UIView animateWithDuration:item.duration delay:item.delay options:item.options animations:item.animations completion:^(BOOL finished) {
                [self animationFinished];
            }];
        } else {
            [UIView animateWithDuration:item.duration delay:item.delay options:item.options animations:item.animations completion:nil];
        }
    }
    
    if(!group.waitUntilDone) {
        [self nextGroup];
    }
}

- (void)animationFinished
{
    _finishedCount++;
    
    QBAnimationGroup *group = (QBAnimationGroup *)[self.groups objectAtIndex:_currentGroup];
    
    if(_finishedCount == (NSInteger)group.items.count) {
        _finishedCount = 0;
        
        [self nextGroup];
    }
}

- (void)stop
{
    
}

@end
