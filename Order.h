#import <Cocoa/Cocoa.h>
#import "WorkerThread.h"


@interface Order : NSObject {

	int	m_numThreads;
}

@property (readwrite) int numThreads;

- (void)orderWorkWithFormatterType:(FormatterType)formatterType;
- (void)printName:(NSString*)name;

@end
