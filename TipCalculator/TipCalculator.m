//
//  TipCalculator.m
//  TipCalculator
//
//  Created by Jeff Huang on 2015-07-10.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "TipCalculator.h"

@implementation TipCalculator

-(float) calculateTip:(float)total withTipPercent:(float)percent{
    return total * percent;
}

@end
