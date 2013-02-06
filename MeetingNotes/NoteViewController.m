//
//  NoteViewController.m
//  MeetingNotes
//
//  Created by matt on 13/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import "NoteViewController.h"

@interface NoteViewController ()

@end

@implementation NoteViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

@synthesize note;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    if( note )
    {
        // Pre-existing Note to initialise using
        self.title = note.text;
        self.noteTextView.text = note.text;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)willMoveToParentViewController:(UIViewController *)parent
{
    if( !parent )
    {
        // unloading
        [note updateText :self.noteTextView.text];
        [self.delegate dismissPresentedViewController :note];
    }
}

@end
