/*
 Copyright (c) 2013 Katsuma Tanaka
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "QBAnimationItem.h"

@implementation QBAnimationItem

+ (instancetype)item
{
    return [[self alloc] init];
}

+ (instancetype)itemWithDuration:(CGFloat)duration delay:(CGFloat)delay options:(UIViewAnimationOptions)options animations:(QBAnimationBlock)animations
{
    return [[self alloc] initWithDuration:duration delay:delay options:options animations:animations];
}

- (instancetype)initWithDuration:(CGFloat)duration delay:(CGFloat)delay options:(UIViewAnimationOptions)options animations:(QBAnimationBlock)animations
{
    self = [super init];
    
    if (self) {
        self.duration = duration;
        self.delay = delay;
        self.options = options;
        self.animations = animations;
    }
    
    return self;
}

- (instancetype)init
{
    return [self initWithDuration:0 delay:0 options:UIViewAnimationOptionCurveLinear animations:NULL];
}

@end
