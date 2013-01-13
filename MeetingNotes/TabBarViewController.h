//
//  TabBarViewController.h
//  MeetingNotes
//
//  Created by matt on 12/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Meetings.h"

@interface TabBarViewController : UITabBarController <UITabBarControllerDelegate>
{
    Meetings *_meetings;
}

@end
