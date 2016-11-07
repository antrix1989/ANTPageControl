//
//  ANTPageControl.m
//  antrix1989@gmail.com
//
//  Created by Sergey Demchenko on 5/21/15.
//  Copyright (c) 2015 Sergey Demchenko. All rights reserved.
//

#import "ANTPageControl.h"

@interface ANTPageControl()

@end

@implementation ANTPageControl

- (void)setCurrentPage:(NSInteger)page
{
    [super setCurrentPage:page];
    [self updateDots];
}

- (void)updateDots
{
    for (int i = 0; i < [self.subviews count]; i++) {
        UIImageView * dot = [self imageViewForSubview:[self.subviews objectAtIndex: i]];
        if (i == self.currentPage) dot.image = self.activeImage;
        else dot.image = self.inactiveImage;
    }
}
- (UIImageView *)imageViewForSubview: (UIView *) view
{
    UIImageView * dot = nil;
    if ([view isKindOfClass: [UIView class]]) {
        for (UIView* subview in view.subviews) {
            if ([subview isKindOfClass:[UIImageView class]]) {
                dot = (UIImageView *)subview;
                break;
            }
        }
        if (dot == nil) {
            dot = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, view.frame.size.width, view.frame.size.height)];
            [view addSubview:dot];
        }
    } else {
        dot = (UIImageView *) view;
    }
    
    return dot;
}

@end
