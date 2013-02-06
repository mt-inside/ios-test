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

@property (readonly, copy) NSArray *meetings;
-(NSArray/*<Note *>*/ *)actions;

-(void)addMeeting :(Meeting *)meeting;

@end