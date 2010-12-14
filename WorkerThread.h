#import <Cocoa/Cocoa.h>
#import "Worker.h"


@interface WorkerThread : NSThread {

	BOOL		m_includeDateFormatter;
	id			m_syncObject;
	SEL			m_syncFunction;
	Worker*		m_worker;
	float		m_sum;
	int			m_numWorkers;
}

- (id)initWithDateFormatter:(BOOL)includeDateFormatter andSyncObject:(id)syncObject andSyncFunction:(SEL)syncFunction;

@end
