#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr) {
    double rawFeet = meters * 3.281;

    unsigned int feet = (unsigned int)floor(rawFeet);

    if (ftPtr) {
        *ftPtr = feet;
    }

    if (inPtr) {
        double fractionFoot = rawFeet - feet;
        double inches = fractionFoot * 12.0;
        *inPtr = inches;
    }
}

int main(int charc, const char *argv[]) {
    double pi = 3.14;
    double integerPart;
    double fractionPart;

    fractionPart = modf(pi, &integerPart);
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);

    double meters = 3.0;
    unsigned int feet;
    double inches;

    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);

    return 0;
}
