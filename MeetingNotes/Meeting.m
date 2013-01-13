//
//  Meeting.m
//  MeetingNotes
//
//  Created by matt on 29/12/2012.
//  Copyright (c) 2012 matt. All rights reserved.
//

#import "Meeting.h"

@implementation Meeting

-(id)init
{
    @throw [NSException
            exceptionWithName: NSGenericException
            reason:            @"nullary -init not supported"
            userInfo:          nil];
}

-(id)init :(NSString *)initTitle :(NSDate *)initDate
{
    title = initTitle;
    date = initDate;
    _notes = [[NSMutableArray alloc] init];
    
    return self;
}

@synthesize title;
@synthesize date;

-(void)addNote :(Note *)note
{
    [_notes addObject :note];
}

-(NSAttributedString *)asAttributedString
{
    NSMutableAttributedString *ret = [[NSMutableAttributedString alloc] init];
    NSAttributedString *attributedNote;
    NSDictionary *attrs;
    
    for (Note *note in _notes)
    {
        NSString *substr = note.text;
        
        attrs = [[NSDictionary alloc]
                 initWithObjectsAndKeys:
                 [UIColor redColor], NSForegroundColorAttributeName, nil];
        attributedNote = [[NSAttributedString alloc] initWithString:substr attributes:attrs];
        [ret appendAttributedString: attributedNote];
        
        [ret appendAttributedString: [[NSAttributedString alloc] initWithString:@"\n"]];
    }
    
    return ret;
}

@end