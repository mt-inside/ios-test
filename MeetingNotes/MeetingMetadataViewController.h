//
//  MeetingMetadataViewController.h
//  MeetingNotes
//
//  Created by matt on 29/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeetingMetadataViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *meetingName;
- (IBAction)saveButtonPressed:(id)sender;
- (IBAction)cancelButtonPressed:(id)sender;

@end
