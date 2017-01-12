//
//  Patient.m
//  20170112 Patient and Doctor
//
//  Created by Minhung Ling on 2017-01-12.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName: (NSString *) patientName age:(NSInteger)patientAge healthCard: (BOOL) patientCard
{
    self = [super init];
    if (self) {
        _name = patientName;
        _age = patientAge;
        _healthCard = patientCard;
        _symptoms = [[NSMutableArray alloc] init];
        _prescriptionsNeeded = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) requestMedicationFromDoctor:(Doctor *)doctor {
    
}

- (void) visitDoctor:(Doctor *)doctor {
    if ([doctor checkHealthCard:self]) {
        [doctor checkSymptoms:self];
        [doctor giveDiagnosis:self];
        [self requestMedicationFromDoctor:doctor];
    };
}

- (void) addSymptom: (NSString *)newSymptom {
    [self.symptoms addObject:newSymptom];
}

@end
