#import <Cocoa/Cocoa.h>


@interface Worker : NSObject {

	float m_sum;
}

@property (readonly) float sum;

- (BOOL)workWithoutDateFormater;
- (BOOL)workWithDateFormatterInit;
- (BOOL)workWithDateFormaterWithFormatterBehavior10_0;
- (BOOL)workWithDateFormaterWithFormatterBehavior10_4;

@end
