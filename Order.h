#import <Cocoa/Cocoa.h>


@interface Order : NSObject {

	int	m_numThreads;
}

@property (readwrite) int numThreads;

- (void)orderWorkWithDateFormatter:(BOOL)includeDateFormatter;
- (void)printName:(NSString*)name;

@end
