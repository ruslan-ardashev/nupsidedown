#import <Preferences/Preferences.h>

@interface nupsidedownprefsListController: PSListController {
}
@end

@implementation nupsidedownprefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"nupsidedownprefs" target:self] retain];
	}
	return _specifiers;
}

-(void) sendEmail
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:ruslan.ardashev@duke.edu?subject=nupsidedown"]];
}

-(void) openInstructions
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/watch?v=0jrsolwbXxM"]];
}

-(void) openYoutubeChannel
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/user/Ruslan120101"]];
}
@end

// vim:ft=objc
