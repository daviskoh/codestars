//
//  main.m
//  BMITime
//
//  Created by Davis Koh on 7/9/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Employee *person = [[Employee alloc] initWithHeightInMeters:90+i weightInKilos:1.8-i/10.0];
            person.employeeID = i;
            
            [employees addObject:person];
        }
        
        for (int i = 0; i < 10; i++) {
            Asset *asset = [[Asset alloc] init];
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAssetsObject:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of array");
        
        employees = nil;
    }
    return 0;
}
