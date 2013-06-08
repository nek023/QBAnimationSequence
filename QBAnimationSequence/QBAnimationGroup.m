/*
 Copyright (c) 2013 Katsuma Tanaka
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "QBAnimationGroup.h"

#import "QBAnimationItem.h"

@implementation QBAnimationGroup

+ (instancetype)group
{
    return [[self alloc] init];
}

+ (instancetype)groupWithItem:(QBAnimationItem *)item
{
    return [[self alloc] initWithItem:item];
}

+ (instancetype)groupWithItems:(NSArray *)items
{
    return [[self alloc] initWithItems:items];
}

- (instancetype)initWithItem:(QBAnimationItem *)item
{
    return [self initWithItems:[NSArray arrayWithObject:item]];
}

- (instancetype)initWithItems:(NSArray *)items
{
    self = [super init];
    
    if (self) {
        self.items = items;
        self.waitUntilDone = YES;
    }
    
    return self;
}

- (instancetype)init
{
    return [self initWithItems:nil];
}

@end
