//
//  MeetingsViewController.h
//  MeetingNotes
//
//  Created by matt on 12/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Meetings.h"
#import "MeetingMetadataViewController.h"

@interface MeetingsViewController : UITableViewController <MeetingMetadataViewControllerDelegate>

@property (strong) Meetings *meetings;

@end