#import <Cocoa/Cocoa.h>


@interface Worker : NSObject {

	float m_sum;
}

@property (readonly) float sum;

- (BOOL)workWithoutDateFormater;
- (BOOL)workWithDateFormater;

@end
