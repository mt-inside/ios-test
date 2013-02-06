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
    meetings = [[NSMutableArray alloc] init];
    
    return self;
}

@synthesize meetings;

-(NSArray *)actions
{
    NSMutableArray *actions = [[NSMutableArray alloc] init];
    
    /* oh, for LINQ */
    for( Meeting *m in meetings )
    {
        for( Note *n in m.notes )
        {
            if( n.type == Action )
            {
                [actions addObject :n];
            }
        }
    }
    
    return actions;
}

-(void)addMeeting :(Meeting *)meeting
{
    [meetings addObject :meeting];
}

@end