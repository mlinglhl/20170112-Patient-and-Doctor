//
//  Doctor.m
//  20170112 Patient and Doctor
//
//  Created by Minhung Ling on 2017-01-12.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)doctorName specialization: (NSString*) doctorSpecialization assistant: (Assistant *) assistant
{
    self = [super init];
    if (self) {
        _name = doctorName;
        _specialization = doctorSpecialization;
        _assistant = assistant;
    }
    return self;
}

- (BOOL) checkHealthCard: (Patient *)patient {
    if (patient.healthCard == YES){
        return YES;
    }
    else {
        NSLog(@"Get out!");
        return NO;
    }
}

- (void) checkSymptoms: (Patient *)patient {
    if (patient.symptoms.count > 0) {
        NSLog(@"Your symptoms are %@", patient.symptoms);
        patient.sick = YES;
    }
    else {
        NSLog(@"You're fine, get out!");
        patient.sick = NO;
    }
}

- (void) giveDiagnosis: (Patient *)patient {
    for (NSString *symptom in patient.symptoms) {
        if ([symptom isEqualToString:@"bleeding"]) {
            NSLog(@"Use %@ to cure your %@.", self.assistant.knowledgeBase[@"bleeding"], symptom);
            if (![patient.prescriptionsNeeded containsObject:self.assistant.knowledgeBase[@"bleeding"]]) {
                [patient.prescriptionsNeeded addObject:self.assistant.knowledgeBase[@"bleeding"]];
            }
        }
        else if ([symptom isEqualToString:@"headache"]) {
            NSLog(@"Use %@ to cure your %@.", self.assistant.knowledgeBase[@"headache"], symptom);
            if (![patient.prescriptionsNeeded containsObject:self.assistant.knowledgeBase[@"headache"]]) {
                [patient.prescriptionsNeeded addObject:self.assistant.knowledgeBase[@"headache"]];
            }
        }
        else if ([symptom isEqualToString:@"sores"]) {
            NSLog(@"Use %@ to cure your %@.", self.assistant.knowledgeBase[@"sores"], symptom);
            if (![patient.prescriptionsNeeded containsObject:self.assistant.knowledgeBase[@"sores"]]) {
                
                [patient.prescriptionsNeeded addObject:self.assistant.knowledgeBase[@"sores"]];
            }
        }
        else {
            NSLog(@"I don't know a treatment for %@.", symptom);
        }
    }
}

-(BOOL) checkRecords: (Patient *)patient prescription: (NSString *)drug {
    NSSet *set = [[NSSet alloc] initWithSet:[self.assistant.patientPrescriptions objectForKey:patient.name]];
    if ([[self.assistant.patientPrescriptions objectForKey:patient.name] containsObject:drug]) {
        NSLog(@"You already have %@", drug);
        return NO;
    }
    else {
        NSSet *set2 = [set setByAddingObject:drug];
        [self.assistant.patientPrescriptions setValue:set2 forKey:patient.name];
        return YES;
    }
}

- (void) giveMedicine: (Patient *) patient prescription: (NSString *)drug {
    [self checkRecords:patient prescription: drug];
}

@end
