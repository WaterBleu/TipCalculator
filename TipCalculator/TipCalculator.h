//
//  TipCalculator.h
//  TipCalculator
//
//  Created by Jeff Huang on 2015-07-10.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TipCalculator : NSObject

-(float) calculateTip:(float)total withTipPercent:(float)percent;

@end
