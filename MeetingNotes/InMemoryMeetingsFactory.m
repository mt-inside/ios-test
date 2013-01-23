//
//  InMemoryMeetingsFactory.m
//  MeetingNotes
//
//  Created by matt on 23/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import "InMemoryMeetingsFactory.h"

@implementation InMemoryMeetingsFactory

-(Meetings *)getMeetings
{
    Note *foo = [[Note alloc] init :@"foo" :Action];
    Note *bar = [[Note alloc] init :@"bar" :Feedback];
    
    Meeting *meetingA = [[Meeting alloc] init :@"a meeting" :nil];
    [meetingA addNote :foo];
    [meetingA addNote :bar];
    
    Meeting *meetingB = [[Meeting alloc] init :@"b meeting" :nil];
    [meetingB addNote :foo];
    [meetingB addNote :bar];
    
    Meeting *meetingC = [[Meeting alloc] init :@"c meeting" :nil];
    [meetingC addNote :foo];
    [meetingC addNote :bar];
    
    Meetings *meetings = [[Meetings alloc] init];
    
    [meetings addMeeting: meetingA];
    [meetings addMeeting: meetingB];
    [meetings addMeeting: meetingC];
    
    return meetings;
}

@end
