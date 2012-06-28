//
//  View.m
//  Jun28
//
//  Created by Piyal Basu on 6/28/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "View.h"
#import "SmallView.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        
        CGRect f = CGRectMake(60, 150, 200, 200);
        smallView = [[SmallView alloc] initWithFrame: f];
        [self addSubview: smallView];
    }
    return self;
}




// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    UIFont *font = [UIFont systemFontOfSize: 10];
    [@"Tap the wall to shoot at it, why don't you" drawAtPoint: CGPointZero withFont: font];
}


@end
