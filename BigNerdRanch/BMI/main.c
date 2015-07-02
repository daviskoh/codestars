#include <stdio.h>

// typedef allows alias for type declaration for re-use
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p) {
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int charc, const char *argv[]) {
    Person mikey;
    mikey.weightInKilos = 96;
    mikey.heightInMeters = 1.7;

    Person aaron;
    aaron.weightInKilos = 84;
    aaron.heightInMeters = 1.97;

    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);
    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
    printf("mikey has a BMI of %.2f\n", bodyMassIndex(mikey));

    printf("aaron weighs %d kilograms\n", aaron.weightInKilos);
    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
    printf("aaron has a BMI of %.2f\n", bodyMassIndex(aaron));

    return 0;
}
