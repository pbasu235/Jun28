//
//  SmallView.m
//  Jun28
//
//  Created by Piyal Basu on 6/28/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "SmallView.h"
#import "SmallerView.h"

@implementation SmallView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
         self.backgroundColor = [UIColor redColor];
        
        CGRect f = CGRectMake(360, 350, 80, 100);
        smallerView = [[SmallerView alloc] initWithFrame: f];
        [self addSubview: smallerView];
    }
    return self;
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (touches.count > 0) {
        //UITouch *touch = [touches anyObject];
        //CGPoint point = [touch locationInView: self];
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView: self];
        smallerView.center = point;
        
    }
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{

    // Drawing code

    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    // Drawing code
    
    UIImage *image = [UIImage imageNamed: @"Brickwall.jpg"];	//100 by 100
    if (image == nil) {
        NSLog(@"could not find the image");
        return;
    }
    
    //upper left corner of image
    CGPoint point = CGPointMake(
                                (w - image.size.width) / 2,
                                h - image.size.height
                                );
    
    [image drawAtPoint: point];
}


@end
