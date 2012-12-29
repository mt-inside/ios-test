//
//  Note.h
//  MeetingNotes
//
//  Created by matt on 29/12/2012.
//  Copyright (c) 2012 matt. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    Action,
    Feedback,
    Info,
    Reminder // Written ahead of the meeting
} NoteType;

@interface Note : NSObject
{
    // These instance vars seem to need to have the same name as the properties
    NSString *text;
    NoteType  type;
}

-(id)init :(NSString*)text :(NoteType)type;

@property (readonly, copy) NSString *text;
@property (readonly) NoteType type;

@end