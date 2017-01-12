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
            NSLog(@"%@ will cure your %@.", self.assistant.knowledgeBase[@"bleeding"], symptom);
            [patient.prescriptionsNeeded addObject:self.assistant.knowledgeBase[@"bleeding"]];
        }
        else if ([symptom isEqualToString:@"headache"]) {
            NSLog(@"%@ will cure your %@.", self.assistant.knowledgeBase[@"headache"], symptom);
            [patient.prescriptionsNeeded addObject:self.assistant.knowledgeBase[@"headache"]];
        }
        else if ([symptom isEqualToString:@"sores"]) {
            NSLog(@"%@ will cure your %@.", self.assistant.knowledgeBase[@"sores"], symptom);
            [patient.prescriptionsNeeded addObject:self.assistant.knowledgeBase[@"sores"]];
        }
        else {
            NSLog(@"I don't know a treatment for %@.", symptom);
        }
    }
}

-(void) checkRecords: (Patient *)patient {
    
}

@end
