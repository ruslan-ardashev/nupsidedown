/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.

%hook ClassName

// Hooking a class method
+ (id)sharedInstance {
	return %orig;
}

// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	%log; // Write a message about this call, including its class, name and arguments, to the system log.

	%orig; // Call through to the original function with its original arguments.
	%orig(nil); // Call through to the original function with a custom argument.

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.
- (id)noArguments {
	%log;
	id awesome = %orig;
	[awesome doSomethingElse];

	return awesome;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end
*/


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