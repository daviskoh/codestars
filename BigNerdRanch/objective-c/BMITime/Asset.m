//
//  Asset.m
//  BMITime
//
//  Created by Davis Koh on 7/9/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "Asset.h"

@implementation Asset

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%d>", self.label, self.resaleValue];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
