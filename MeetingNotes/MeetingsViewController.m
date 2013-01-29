//
//  MeetingsViewController.m
//  MeetingNotes
//
//  Created by matt on 12/01/2013.
//  Copyright (c) 2013 matt. All rights reserved.
//

#import "MeetingsViewController.h"
#import "MeetingViewController.h"
#import "MeetingMetadataViewController.h"

@interface MeetingsViewController ()

@end

@implementation MeetingsViewController

@synthesize meetings;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*-(void)addButtonCallback
{    
    Meeting *meeting = [[Meeting alloc] init:@"foobar" :[NSDate dateWithTimeIntervalSinceNow:0 ]];
    [meetings addMeeting:meeting];
    
    [self.tableView reloadData];
}*/

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    // TODO: days
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    // TODO: meetings / day
    return meetings.meetings.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if( cell == nil )
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    Meeting *meeting = [meetings.meetings objectAtIndex:indexPath.row];
    NSString *meetingTitle = meeting.title;
    cell.textLabel.text = meetingTitle;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *vc = [segue destinationViewController];
    
    if( [vc isMemberOfClass:[MeetingViewController class]] )
    {
        MeetingViewController *mvc = (MeetingViewController *)vc;
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        int row = path.row;
        mvc.meeting = [meetings.meetings objectAtIndex :row];
    }
    else if( [vc isMemberOfClass:[MeetingMetadataViewController class]] )
    {
        MeetingMetadataViewController *mmvc = (MeetingMetadataViewController *)vc;

    }
}
@end
