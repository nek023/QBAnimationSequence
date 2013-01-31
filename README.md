# QBAnimationSequence
QBAnimationSequence is a library for controlling continuous view animations.

## Installation
`#import "QBAnimationSequence.h"` in your ViewController


## ScreenShot
![ss01.png](http://adotout.sakura.ne.jp/github/QBAnimationSequence/ss01.png)
![ss02.png](http://adotout.sakura.ne.jp/github/QBAnimationSequence/ss02.png)


## Classes
### QBAnimationSequence
A main sequencer for view animations that controls QBAnimationGroup instances.

#### groups
An array of animation groups.

`@property (nonatomic, copy) NSArray *groups`

#### repeat
A Boolean value that determines whether the animations repeat automatically.

`@property (nonatomic, assign) BOOL repeat`

--

### QBAnimationGroup
A group of animations.

#### items
An array of animation items.

`@property (nonatomic, copy) NSArray *items`

#### waitUntilDone
A Boolean value that determines whether to wait until animations finish.

`@property (nonatomic, assign) BOOL waitUntilDone`

--

### QBAnimationItem
An animation item.

#### duration
Specifies the basic duration of the animation, in seconds.

`@property (nonatomic, assign) CGFloat duration`

#### delay
Specifies the delay, in seconds, between animation.

`@property (nonatomic, assign) CGFloat delay`

#### options
A mask of options indicating how you want to perform the animations.

`@property (nonatomic, assign) UIViewAnimationOptions options`

#### animations
A block object containing the changes to commit to the views.

`@property (nonatomic, copy) QBAnimationBlock animations`


## Example Usage
See *QBAnimationSequence* project for an example usage.


## License
 Copyright (c) 2013 Katsuma Tanaka
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
