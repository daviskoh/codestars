#import <Foundation/Foundation.h>

@interface Person : NSObject 

@property (readonly) float heightInMeters;
@property (readonly) int weightInKilos;

- (id)initWithHeightInMeters:(float)height weightInKilos:(int)weight;
- (float)bodyMassIndex;

@end
