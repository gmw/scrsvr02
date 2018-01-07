//
//  Patterns_02View.h
//  Patterns 02
//
//  Created by Magnus Wissler on 2018-01-05.
//  Copyright © 2018 Magnus Wissler. All rights reserved.
//

#import <ScreenSaver/ScreenSaver.h>

@interface Patterns_02View : ScreenSaverView

@property (nonatomic) float startAngle;
@property (nonatomic, strong) NSFont* font;
@property (nonatomic, strong) NSDictionary<NSAttributedStringKey, id>* attrs;
@end
