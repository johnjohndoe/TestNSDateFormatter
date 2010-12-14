#import "WorkerThread.h"
#include <sys/time.h>


@implementation WorkerThread

- (id)init {
	self = [super init];
	if (self != nil) {
		m_includeDateFormatter = NO;
		m_syncObject = nil;
		m_syncFunction = nil;
		m_worker = nil;
		m_sum = 0;
		m_numWorkers = 200;
	}
	return self;
}

- (id)initWithDateFormatter:(BOOL)includeDateFormatter andSyncObject:(id)syncObject andSyncFunction:(SEL)syncFunction {
	self = [self init];
	if (self != nil) {
		m_includeDateFormatter = includeDateFormatter;
		m_syncObject = syncObject;
		m_syncFunction = syncFunction;
	}
	return self;
}

- (void)main {
	
	BOOL done = NO;

	if (!m_worker)
		m_worker = [[Worker alloc] init];
	
	if (m_includeDateFormatter) {
		for (int i = 0; i < m_numWorkers; ++i) {
			double start = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
			done = [m_worker workWithDateFormater];
			double stop = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
			m_sum += stop - start;
		}
	}
	else {
		for (int i = 0; i < m_numWorkers; ++i) {
			double start = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
			done = [m_worker workWithoutDateFormater];
			double stop = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
			m_sum += stop - start;
		}		
	}

	printf("Thread %d: Time around = %f sec\n", [self.name intValue], m_sum * 0.001);
	printf("Thread %d: Time inside = %f sec\n", [self.name intValue], m_worker.sum * 0.001);
	
	if (done)
		[m_syncObject performSelector:m_syncFunction withObject:[self name]];
}

@end
