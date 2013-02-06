//
//  Meetings.h
//  MeetingNotes
//
//  Created by matt on 29/12/2012.
//  Copyright (c) 2012 matt. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Meeting.h"


@interface Meetings : NSObject
{
    NSMutableArray *meetings;
}

/* TODO: lift actions and Meetings* meetings up to a new type, leaving NSArray meetings & addMeeting down here */
@property (readonly) NSArray *meetings;
-(NSArray/*<Note *>*/ *)actions;

-(void)addMeeting :(Meeting *)meeting;

@end