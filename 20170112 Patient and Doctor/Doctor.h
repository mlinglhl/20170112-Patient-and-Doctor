//
//  Doctor.h
//  20170112 Patient and Doctor
//
//  Created by Minhung Ling on 2017-01-12.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
- (instancetype)initWithName:(NSString *)doctorName specialization: (NSString*) doctorSpecialization;
- (BOOL) checkHealthCard: (Patient *)patient;
- (void) checkSymptoms: (Patient *)patient;
- (void) giveDiagnosis: (Patient *)patient;
- (void) checkRecords: (Patient *)patient;
@end
