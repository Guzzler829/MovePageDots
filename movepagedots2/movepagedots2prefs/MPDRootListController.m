#import <Foundation/Foundation.h>
#import "MPDRootListController.h"

@implementation MPDRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

@end
