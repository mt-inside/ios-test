//
//  MeetingMetadataViewController.m
//  MeetingNotes
//
//  Created by matt on 29/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import "MeetingMetadataViewController.h"

@interface MeetingMetadataViewController ()

@end

@implementation MeetingMetadataViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonPressed:(id)sender
{
    [self.delegate dismissPresentedViewController :[[Meeting alloc] init :self.meetingName.text :[NSDate dateWithTimeIntervalSinceNow:0]]];
}

- (IBAction)cancelButtonPressed:(id)sender
{
    [self.delegate dismissPresentedViewController :NULL];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end
