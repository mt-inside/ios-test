//
//  IMeetingsFactory.h
//  MeetingNotes
//
//  Created by matt on 23/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Meetings.h"

@protocol IMeetingsFactory <NSObject>
    -(Meetings *)getMeetings;
@end