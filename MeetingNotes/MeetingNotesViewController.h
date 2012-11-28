//
//  MeetingNotesViewController.h
//  MeetingNotes
//
//  Created by matt on 20/11/2012.
//  Copyright (c) 2012 matt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeetingNotesViewController : UIViewController
- (IBAction)changeGreeting:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textName;
@property (weak, nonatomic) IBOutlet UILabel *labelGreeting;

@end
