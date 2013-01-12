//
//  MeetingNotesViewController.h
//  MeetingNotes
//
//  Created by matt on 20/11/2012.
//  Copyright (c) 2012 matt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeetingViewController : UIViewController <UITextFieldDelegate>
- (IBAction)changeGreeting:(id)sender;
- (IBAction)back:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textName;
@property (weak, nonatomic) IBOutlet UILabel *labelGreeting;
@property (weak, nonatomic) IBOutlet UITextView *textArea;

// This is the model. Currently only one string.
// Point is that program state shouldn't be left in UI elements
@property (copy, nonatomic) NSString *userName;

@end
