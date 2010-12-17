#import "Worker.h"
#include <sys/time.h>


@implementation Worker

- (id)init {
	self = [super init];
	if (self != nil) {
		m_sum = 0;
	}
	return self;
}

@synthesize sum = m_sum;


- (BOOL)workWithoutDateFormater {
	
	double start = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
	BOOL done = NO;
	
	done = YES;	
	double stop = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
	m_sum += stop - start;
	
	return done;
}



- (BOOL)workWithDateFormatterInit {
	
	double start = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
	BOOL done = NO;
	
	NSDateFormatter* dateFormatter1 = [[NSDateFormatter alloc] init];
	[dateFormatter1 setDateFormat:@"yyyyMMdd HH:mm:ss.SSS"];
	
	done = YES;	
	double stop = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
	m_sum += stop - start;
	
	return done;
}


- (BOOL)workWithDateFormaterWithFormatterBehavior10_0 {
	
	double start = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
	BOOL done = NO;
	
	NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] initWithDateFormat:@"yyyyMMdd HH:mm:ss.SSS" allowNaturalLanguage:NO];
	
	done = YES;	
	double stop = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
	m_sum += stop - start;
	
	return done;
}


- (BOOL)workWithDateFormaterWithFormatterBehavior10_4 {
	
	double start = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
	BOOL done = NO;
	
	NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] initWithDateFormat:@"yyyyMMdd HH:mm:ss.SSS" allowNaturalLanguage:NO];
	[dateFormatter setFormatterBehavior:NSDateFormatterBehavior10_4];
	
	done = YES;	
	double stop = ({struct timeval v; gettimeofday(&v, NULL); (double)(v.tv_sec*1000.+v.tv_usec*0.001);});
	m_sum += stop - start;
	
	return done;
}

@end
