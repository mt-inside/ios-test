//
//  MeetingNotesViewController.m
//  MeetingNotes
//
//  Created by matt on 20/11/2012.
//  Copyright (c) 2012 matt. All rights reserved.
//

#import "MeetingViewController.h"
#import "Meeting.h"

@interface MeetingViewController ()

@end

@implementation MeetingViewController

@synthesize userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender
{
    self.userName = self.textName.text;
    
    // this is an important pattern - pulling the model out of self into a local then rendering it.
    // NSString *nameString = self.userName;
    
    /*
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"Hello. That is a test attributed string."];
    [str addAttribute:NSBackgroundColorAttributeName value:[UIColor yellowColor] range:NSMakeRange(3,5)];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(10,7)];
    [str addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:20.0] range:NSMakeRange(20, 10)];
    self.textArea.attributedText = str;
    */
    
    Note *foo = [[Note alloc] init :@"foo" :Action];
    Note *bar = [[Note alloc] init :@"bar" :Feedback];
    
    Meeting *meeting = [[Meeting alloc] init :@"a meeting" :nil];
    [meeting addNote :foo];
    [meeting addNote :bar];
    
    NSAttributedString *str = meeting.asAttributedString;
    self.textArea.attributedText = str;
}

- (IBAction)back:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField
{
    
    if (theTextField == self.textName) {
        [theTextField resignFirstResponder];
    }
    
    return YES;
    
}
@end
