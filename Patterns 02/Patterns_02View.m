//
//  Patterns_02View.m
//  Patterns 02
//
//  Created by Magnus Wissler on 2018-01-05.
//  Copyright © 2018 Magnus Wissler. All rights reserved.
//

#import "Patterns_02View.h"

@implementation Patterns_02View

@synthesize startAngle;
@synthesize font;
@synthesize attrs;

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
        font = [NSFont fontWithName:@"Helvetica Neue Regular" size:28.0];
        attrs = @{
                  NSForegroundColorAttributeName: [NSColor greenColor]
                  };
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
    startAngle = 0.0;
    NSLog(@"startAnimation");
}

- (void)stopAnimation
{
    [super stopAnimation];
    NSLog(@"stopAnimation");
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
    NSRect bounds = self.bounds;
    
    NSPoint center = NSMakePoint( (bounds.size.width - bounds.origin.x) / 2,
                                 (bounds.size.height - bounds.origin.y) / 2);
    
    NSBezierPath* path = [NSBezierPath bezierPath];
    NSAttributedString* str = [[NSAttributedString alloc] initWithString:@"Hello, World!" attributes:attrs];
    
    [[NSColor redColor] setStroke];

    [path setLineWidth:5.0];
    [path appendBezierPathWithOvalInRect:bounds];
    [path stroke];
    [str drawAtPoint:center];
}

- (void)animateOneFrame
{
    startAngle = startAngle + 1.0;

    return;
}

- (void) setFrameSize:(NSSize)newSize
{
    [super setFrameSize:newSize];
    
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
