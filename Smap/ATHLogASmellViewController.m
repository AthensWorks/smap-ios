//
//  ATHLogASmellViewController.m
//  Smap
//
//  Created by Ben Lachman on 2/21/13.
//  Copyright (c) 2013 Athensworks. All rights reserved.
//

#import "ATHLogASmellViewController.h"

@interface ATHLogASmellViewController ()

@end

@implementation ATHLogASmellViewController

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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
		
	CGRect frame = cell.detailTextLabel.frame;
	
	frame.origin.x += 10;
	frame.size.width = 200;
	
	UITextField *textField = [[UITextField alloc] initWithFrame:frame];
	
	[cell addSubview:textField];
	cell.detailTextLabel.hidden = YES;
	
	textField.delegate = self;
	[textField becomeFirstResponder];
	
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	NSLog(@"%@", @"textField.text");
	
	[textField resignFirstResponder];
	
	return YES;
}

@end
