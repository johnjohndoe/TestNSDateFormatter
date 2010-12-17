#import <Cocoa/Cocoa.h>
#import "Worker.h"


typedef enum { 
	NoNSDateFormatter,
	NSDateFormatterInit, 
	NSDateFormatterInitWithDateFormat10_0, 
	NSDateFormatterInitWithDateFormat10_4 
} FormatterType;


@interface WorkerThread : NSThread {

	FormatterType	m_formatterType;
	id				m_syncObject;
	SEL				m_syncFunction;
	Worker*			m_worker;
	float			m_sum;
	int				m_numWorkers;
}

- (id)initWithDateFormatter:(FormatterType)formatterType andSyncObject:(id)syncObject andSyncFunction:(SEL)syncFunction;

@end
