/***
 This file is part of PulseAudioOSX
 
 Copyright 2010,2011 Daniel Mack <pulseaudio@zonque.de>
 
 PulseAudioOSX is free software; you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 2.1 of the License, or
 (at your option) any later version.
 ***/

#import "PreferencePane.h"

@implementation PreferencePane

- (void) didSelect
{
}

- (void) didUnselect
{
}

- (void) mainViewDidLoad
{
	NSDistributedNotificationCenter *notificationCenter = [NSDistributedNotificationCenter defaultCenter];
	
	[notificationCenter postNotificationName: @"queryStatusBarEnabled"
					  object: LOCAL_OBJECT
					userInfo: nil
			      deliverImmediately: YES];
}

#pragma mark ### GUI ###
- (IBAction) setStatusBarEnabled: (id) sender
{
	NSDistributedNotificationCenter *notificationCenter = [NSDistributedNotificationCenter defaultCenter];
	NSMutableDictionary *userInfo = [NSMutableDictionary dictionaryWithCapacity: 0];
	BOOL enabled = ([sender state] == NSOnState);

	[userInfo setObject: [NSNumber numberWithBool: enabled]
		     forKey: @"enabled"];
	
	[notificationCenter postNotificationName: @"setStatusBarEnabled"
					  object: LOCAL_OBJECT
					userInfo: userInfo
			      deliverImmediately: YES];		
}

@end
