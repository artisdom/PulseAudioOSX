/***
 This file is part of PulseAudioOSX
 
 Copyright 2010,2011 Daniel Mack <pulseaudio@zonque.de>
 
 PulseAudioOSX is free software; you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 2.1 of the License, or
 (at your option) any later version.
 ***/

#import <PreferencePanes/PreferencePanes.h>
#import "AudioClients.h"

#define LOCAL_OBJECT		@"org.pulseaudio.HALPlugin.PulseAudioPreferencePane"

#define REMOTE_OBJECT_HELPER	@"org.pulseaudio.HALPlugin.PulseAudioHelper"
#define REMOTE_OBJECT_HALPLUGIN	@"org.pulseaudio.HALPlugin.PAHP_Device"

#define MSG_SCANDEVICES		@"org.pulseaudio.HALPlugin.scanDevices"
#define MSG_ANNOUNCE_DEVICE	@"org.pulseaudio.HALPlugin.announceDevice"
#define MSG_SIGNOFF_DEVICE	@"org.pulseaudio.HALPlugin.signOffDevice"
#define MSG_SETCONFIGURATION	@"org.pulseaudio.HALPlugin.setConfiguation"

@interface PreferencePane : NSPreferencePane
{
	IBOutlet AudioClients *audioClients;
	IBOutlet NSButton *statusBarEnabledButton;
}

- (IBAction) setStatusBarEnabled: (id) sender;

@end
