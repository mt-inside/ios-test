//
//  TabBarViewController.m
//  MeetingNotes
//
//  Created by matt on 12/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import "TabBarViewController.h"
#import "ActionsViewController.h"
#import "NavigationViewController.h"

#import "Meeting.h"
#import "Note.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

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
    
    self.delegate = self;
    
    /* This is somewhat akin to an entry point.
     The whole data model is built here and passed through to the following viewControllers which display and edit subsets of it.
     */
    Note *foo = [[Note alloc] init :@"foo" :Action];
    Note *bar = [[Note alloc] init :@"bar" :Feedback];
    
    Meeting *meetingA = [[Meeting alloc] init :@"a meeting" :nil];
    [meetingA addNote :foo];
    [meetingA addNote :bar];
    
    Meeting *meetingB = [[Meeting alloc] init :@"b meeting" :nil];
    [meetingB addNote :foo];
    [meetingB addNote :bar];
    
    Meeting *meetingC = [[Meeting alloc] init :@"c meeting" :nil];
    [meetingC addNote :foo];
    [meetingC addNote :bar];
    
    _meetings = [[Meetings alloc] init];
    
    [_meetings addMeeting: meetingA];
    [_meetings addMeeting: meetingB];
    [_meetings addMeeting: meetingC];
    
    
    /* "bind" the model into the ViewContollers */
    for (UIViewController *vc in self.viewControllers)
    {
        if( [vc isMemberOfClass:[ActionsViewController class]] )
        {
            ActionsViewController *avc = (ActionsViewController *)vc;
            avc.actions = [_meetings actions];
        }
        else if( [vc isMemberOfClass:[NavigationViewController class]] )
        {
            NavigationViewController *nvc = (NavigationViewController *)vc;
            nvc.meetings = _meetings;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end