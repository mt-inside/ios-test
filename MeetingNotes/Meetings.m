//
//  Meetings.m
//  MeetingNotes
//
//  Created by matt on 29/12/2012.
//  Copyright (c) 2012 matt. All rights reserved.
//

#import "Meetings.h"

@implementation Meetings

-(id)init
{
    _meetings = [[NSMutableArray alloc] init];
    
    return self;
}

-(void)addMeeting :(Meeting *)meeting
{
    [_meetings addObject :meeting];
}

-(NSArray *)meetings
{
    return _meetings;
}

@end