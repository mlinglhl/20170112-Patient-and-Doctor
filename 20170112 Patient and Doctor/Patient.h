//
//  Patient.h
//  20170112 Patient and Doctor
//
//  Created by Minhung Ling on 2017-01-12.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property NSString *name;
@property NSInteger age;
@property BOOL healthCard;
@property NSMutableArray *symptoms;
@property BOOL sick;

- (instancetype)initWithName: (NSString *) patientName age:(NSInteger)patientAge healthCard: (BOOL) patientCard;
- (void) requestMedicationFromDoctor: (Doctor *) doctor;
- (void) visitDoctor:(Doctor *)doctor;
- (void) addSymptom: (NSString *)newSymptom;
@end
