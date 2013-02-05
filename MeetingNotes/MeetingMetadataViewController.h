//
//  MeetingMetadataViewController.h
//  MeetingNotes
//
//  Created by matt on 29/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import <UIKit/UIKit.h>

#include "Meeting.h"

/* This is how to delegate for this ViewController, which you will need to do if you want to dismiss it, which, best-practice says, should be done by its presenter */
@protocol MeetingMetadataViewControllerDelegate <NSObject>
/* TODO: the arg should be a MeetingMetadata / ProtoMeeting, which a Meeting should be constructed over */
- (void)dismissPresentedViewController :(Meeting *)meeting;
@end

@interface MeetingMetadataViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) id<MeetingMetadataViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *meetingName;
- (IBAction)saveButtonPressed:(id)sender;
- (IBAction)cancelButtonPressed:(id)sender;

@end
