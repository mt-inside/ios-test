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

#import "IMeetingsFactory.h"
#import "InMemoryMeetingsFactory.h"

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
    
    id<IMeetingsFactory> factory = [[InMemoryMeetingsFactory alloc] init];
    _meetings = [factory getMeetings];
    
    self.delegate = self;
    
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