//
//  SmallerView.m
//  Jun28
//
//  Created by Piyal Basu on 6/28/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "SmallerView.h"

@implementation SmallerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 CGFloat w = self.bounds.size.width;
 CGFloat h = self.bounds.size.height;
 // Drawing code

 UIImage *image = [UIImage imageNamed: @"Bullet-Hole.png"];	//100 by 100
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
