//
//  Assistant.m
//  20170112 Patient and Doctor
//
//  Created by Minhung Ling on 2017-01-12.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "Assistant.h"

@implementation Assistant

- (instancetype)init
{
    self = [super init];
    if (self) {
        _knowledgeBase = @{@"bleeding": @"Leeches",
                           @"headache": @"Asprin",
                           @"sores": @"Ointment"
                           };
        _patientPrescriptions = [[NSDictionary alloc] init];
    }
    return self;
}

@end
