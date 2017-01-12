//
//  main.m
//  20170112 Patient and Doctor
//
//  Created by Minhung Ling on 2017-01-12.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Assistant.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Assistant *assistant1 = [[Assistant alloc] init];
        Doctor *doctor1 = [[Doctor alloc] initWithName:[NSString stringWithFormat:@"Dr. Nick"] specialization: [NSString stringWithFormat:@"brain"] assistant:assistant1];
        Doctor *doctor2 = [[Doctor alloc] initWithName:[NSString stringWithFormat:@"Dr. Alan"] specialization: [NSString stringWithFormat:@"heart"] assistant:assistant1];
        Doctor *doctor3 = [[Doctor alloc] initWithName:[NSString stringWithFormat:@"Dr. Jill"] specialization: [NSString stringWithFormat:@"foot"] assistant:assistant1];
        Patient *patient1 = [[Patient alloc] initWithName:[NSString stringWithFormat:@"Sandra"] age:35 healthCard:YES];
        Patient *patient2 = [[Patient alloc] initWithName:[NSString stringWithFormat:@"Billy"] age:22 healthCard:NO];
        Patient *patient3 = [[Patient alloc] initWithName:[NSString stringWithFormat:@"Meredith"] age:50 healthCard:YES];
        [patient1 addSymptom:[NSString stringWithFormat:@"headache"]];
        [patient1 addSymptom:[NSString stringWithFormat:@"sores"]];
        [patient1 addSymptom:[NSString stringWithFormat:@"bleeding"]];
        [patient1 addSymptom:[NSString stringWithFormat:@"plague"]];
        [patient1 visitDoctor:doctor1];
        [patient2 visitDoctor:doctor2];
        [patient3 visitDoctor:doctor3];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    return 0;
}
