#import <Foundation/Foundation.h>
#import "Person.m"

int main(int charc, const char *argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] initWithHeightInMeters:2.4
                                                  weightInKilos:50];       

        NSLog(@"height: %.1f and weight: %d", person.heightInMeters, person.weightInKilos);
    }

    return 0;
}
