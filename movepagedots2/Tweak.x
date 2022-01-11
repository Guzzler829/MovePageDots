#import "Tweak.h"
#import <UIKit/UIKit.h>
#import <SpringBoard/SpringBoard.h>
#import <Cephei/HBPreferences.h>

%hook _UIPageIndicatorStore
  -(CGSize)sizeForMaximumContentSizeFittingWidth:(double)arg1 {
    if(enabled){
 	CGSize const size = {50,[heightValue doubleValue]};
  	return size;
    } else {
	return %orig;
    }
  }
%end


%ctor {
	preferences = [[HBPreferences alloc] initWithIdentifier:@"com.guzzler.movepagedots2prefs"];
	[preferences registerBool:&enabled default:YES forKey:@"tweakOnOff"];
	if(!enabled) return;
	[preferences registerObject:&heightValue default:@"0.0" forKey:@"dotsHeight"];
}
