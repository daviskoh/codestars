#import "Person.h"

@interface Person ()

@property (readwrite) float heightInMeters;
@property (readwrite) int weightInKilos;

@end

@implementation Person

- (id)initWithHeightInMeters:(float)height weightInKilos:(int)weight {
    self = [super init];

    if (self) {
        _heightInMeters = height;
        _weightInKilos = weight;
    }

    return self;
}

- (float)bodyMassIndex {
    return self.weightInKilos / (self.heightInMeters * self.heightInMeters);
}

@end
