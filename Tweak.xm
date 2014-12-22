////////////////////////////////////////////////////////////////////////////////////////////
//
// nupsidedown by Ruslan Ardashev 
// ruslan.ardashev@duke.edu
// www.ruslanArdashev.com
// Copyright 2014-2015
//
////////////////////////////////////////////////////////////////////////////////////////////

// KNOWN ISSUE(s):
// - Notifications appear on bottom, even when rotated upside down

// UIRotation
%hook SBUIController

-(void)activeInterfaceOrientationDidChangeToOrientation:(int)activeInterfaceOrientation willAnimateWithDuration:(double)duration fromOrientation:(int)orientation { 
	
	if (activeInterfaceOrientation == 2) {

		NSLog(@"ra86: interfering with activeInterfaceOrientationDidChangeToOrientation");
		return;

	}

	else {

		%log; 
		%orig;

	}

}

-(void)activeInterfaceOrientationWillChangeToOrientation:(int)activeInterfaceOrientation {

	if (activeInterfaceOrientation == 2) {

		NSLog(@"ra86: interfering with activeInterfaceOrientationWillChangeToOrientation");
		return;

	}

	else {

		%log; 
		%orig;
		
	}

}

-(void)window:(id)window willAnimateRotationToInterfaceOrientation:(int)interfaceOrientation duration:(double)duration { 
	
	if (interfaceOrientation == 2) {

		NSLog(@"ra86: interfering with window willAnimateRotationToInterfaceOrientation");
		return;

	}

	else {

		%log; 
		%orig;

	}

}

-(void)window:(id)window willRotateToInterfaceOrientation:(int)interfaceOrientation duration:(double)duration { 
	
	if (interfaceOrientation == 2) {

		NSLog(@"ra86: interfering with window willRotateToInterfaceOrientation");
		return;

	}

	else {

		%log; 
		%orig;

	}

}

-(BOOL)window:(id)window shouldAutorotateToInterfaceOrientation:(int)interfaceOrientation { 

	if (interfaceOrientation == 2) {

		NSLog(@"ra86: interfering with window shouldAutorotateToInterfaceOrientation");
		return NO;

	}

	else {

		%log; 
		BOOL r = %orig; 
		NSLog(@" = %d", r); 
		return r; 

	}

}

%end

// Wallpaper Rotation
%hook SBWallpaperController

-(void)activeInterfaceOrientationDidChangeToOrientation:(int)activeInterfaceOrientation willAnimateWithDuration:(double)duration fromOrientation:(int)orientation { 
	
	if (activeInterfaceOrientation == 2) {

		NSLog(@"ra86: activeInterfaceOrientationDidChangeToOrientation");
		return;

	}

	else {

		%log; 
		%orig;

	}
	

}

-(void)activeInterfaceOrientationWillChangeToOrientation:(int)activeInterfaceOrientation { 

	if (activeInterfaceOrientation == 2) {

		NSLog(@"ra86: activeInterfaceOrientationWillChangeToOrientation");
		return;

	}

	else {

		%log; 
		%orig; 

	}


}

-(void)willAnimateRotationToInterfaceOrientation:(int)interfaceOrientation duration:(double)duration { 

	if (interfaceOrientation == 2) {

			NSLog(@"ra86: willAnimateRotationToInterfaceOrientation");
			return;

	}

	else {

		%log; 
		%orig; 

	}

}

-(void)orientationSource:(int)source didRotateFromInterfaceOrientation:(int)interfaceOrientation { 

	if (interfaceOrientation == 2) {

		NSLog(@"ra86: orientationSource,didRotateFromInterfaceOrientation");
		return;

	}

	else {

		%log; 
		%orig; 

	}

}

-(void)orientationSource:(int)source willAnimateRotationToInterfaceOrientation:(int)interfaceOrientation duration:(double)duration { 

	if (interfaceOrientation == 2) {

		NSLog(@"ra86: orientationSource,willAnimateRotationToInterfaceOrientation");
		return;

	}

	else {

		%log; 
		%orig; 

	}

	

}

-(void)orientationSource:(int)source willRotateToInterfaceOrientation:(int)interfaceOrientation duration:(double)duration { 

	if (interfaceOrientation == 2) {

		NSLog(@"ra86: orientationSource,willAnimateRotationToInterfaceOrientation");
		return;

	}

	else {

		%log; 
		%orig;

	}

}


-(BOOL)_isAcceptingOrientationChangesFromSource:(int)source { 

	%log; 
	BOOL r = %orig; 
	NSLog(@" = %d", r); 
	return r; 

}

-(id)initWithOrientation:(int)orientation variant:(int)variant { 

	%log; 
	id r;

	if (orientation == 2) {

		r = %orig(0, variant);

	}

	else {

		r = %orig; 

	}

	NSLog(@" = %@", r); 
	return r; 

}

%end










