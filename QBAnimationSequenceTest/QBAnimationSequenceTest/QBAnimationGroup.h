//
//  QBAnimationGroup.h
//  QBAnimationSequenceTest
//
//  Created by questbeat on 2012/09/29.
//  Copyright (c) 2012年 questbeat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QBAnimationGroup : NSObject
{
    NSArray *_items;
    BOOL _waitUntilDone;
}

@property (nonatomic, copy) NSArray *items;
@property (nonatomic, assign) BOOL waitUntilDone;

+ (id)groupWithItems:(NSArray *)items;
- (id)initWithItems:(NSArray *)items;

@end
