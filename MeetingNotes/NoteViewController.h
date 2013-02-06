//
//  NoteViewController.h
//  MeetingNotes
//
//  Created by matt on 13/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Note.h"

@protocol NoteViewControllerDelegate <NSObject>
- (void)dismissPresentedViewController :(Note *)note;
@end

@interface NoteViewController : UIViewController

@property (nonatomic, weak) id<NoteViewControllerDelegate> delegate;

@property (strong) Note *note;
@property (weak, nonatomic) IBOutlet UITextView *noteTextView;

@end
