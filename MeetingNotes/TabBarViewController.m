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

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    /* FIXME: this is slightly the wrong place for this, as it only gets called for anything that's not the 1st tab.
     Both of the child view controllers work fine when they're 2nd tab, as this happens before their viewDidLoad. However if they're 1st it doesn't work.
     Either need to push the data in to them ahead of the 1st child being made, or
       on asserting the data into the 1st child, cause it to re-draw (don't think this will work, as the logic where it renders the model lives in viewDidLoad, and we can't cause the thing to be loaded again.
     */
    id dvc = viewController;
    if( [dvc isMemberOfClass:[ActionsViewController class]] )
    {
        ActionsViewController *avc = (ActionsViewController *)dvc;
        avc.actions = [_meetings actions];
    }
    else if( [dvc isMemberOfClass:[NavigationViewController class]] )
    {
        NavigationViewController *nvc = (NavigationViewController *)dvc;
        nvc.meetings = _meetings;
    }
    
    return YES;
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end