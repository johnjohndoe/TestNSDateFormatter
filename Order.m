#import "Order.h"
#import "WorkerThread.h"


@implementation Order

- (id)init {
	self = [super init];
	if (self != nil) {
		m_numThreads = 1;
	}
	return self;
}


@synthesize numThreads = m_numThreads;


- (void)orderWorkWithDateFormatter:(BOOL)includeDateFormatter {
	
	for (int i = 1; i <= m_numThreads; ++i) {
		WorkerThread* workerThread = [[WorkerThread alloc] initWithDateFormatter:includeDateFormatter andSyncObject:self andSyncFunction:@selector(printName:)];
		[workerThread setName:[NSString stringWithFormat:@"%d", i]];
		[workerThread start];
	}
}

- (void)printName:(NSString*)name {
	
//	NSLog(@"Done with thread %@.", name); /* DEBUG LOG */
}

@end
