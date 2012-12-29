//
//  Note.m
//  MeetingNotes
//
//  Created by matt on 29/12/2012.
//  Copyright (c) 2012 matt. All rights reserved.
//

#import "Note.h"

@implementation Note

-(id)init
{
    @throw [NSException
            exceptionWithName: NSGenericException
            reason:            @"nullary -init not supported"
            userInfo:          nil];
}

-(id)init :(NSString*)initText :(NoteType)initType
{
    text = initText;
    type = initType;
    
    return self;
}

@synthesize text;
@synthesize type;

@end
