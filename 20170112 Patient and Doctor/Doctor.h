//
//  Doctor.h
//  20170112 Patient and Doctor
//
//  Created by Minhung Ling on 2017-01-12.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Assistant.h"

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property Assistant *assistant;
- (instancetype)initWithName:(NSString *)doctorName specialization: (NSString*) doctorSpecialization assistant: (Assistant *) assistant;
- (BOOL) checkHealthCard: (Patient *)patient;
- (void) checkSymptoms: (Patient *)patient;
- (void) giveDiagnosis: (Patient *)patient;
- (void) checkRecords: (Patient *)patient;
- (void) giveMedicine: (Patient *) patient prescription: (NSString *)drug;
@end
