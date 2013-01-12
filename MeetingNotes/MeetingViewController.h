//
//  MeetingViewController.h
//  MeetingNotes
//
//  Created by matt on 12/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeetingViewController : UIViewController

/* I would really rather not have this mutable state here, but rather construct over the model to be rendered.
 However because I am using the storyboard to magically segue when a list iten is selected the new VC is already constructed by that point.
 I think I can probably manually catch the list item selection and manually invoke the segue to avoid this. */
@property unsigned modelIndex;

@end
