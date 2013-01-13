//
//  Meeting.h
//  MeetingNotes
//
//  Created by matt on 29/12/2012.
//  Copyright (c) 2012 matt. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Note.h"

@interface Meeting : NSObject
{
    NSString *title;
    NSDate   *date;
    NSMutableArray *notes;
}

-(id)init :(NSString *)title :(NSDate *)date;

@property (readonly, copy) NSString *title;
@property (readonly, copy) NSDate *date;
@property (readonly, copy) NSArray *notes;

-(void)addNote :(Note *)note;

// TODO: this is a rendering function and shouldn't be here. Should be a Notes **notes getter and the rendering in the view.
-(NSAttributedString *)asAttributedString;

@end