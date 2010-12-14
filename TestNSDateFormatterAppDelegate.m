#import "TestNSDateFormatterAppDelegate.h"
#import "Order.h"

@implementation TestNSDateFormatterAppDelegate


@synthesize window = m_window;
@synthesize numThreads = m_numThreads;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

	self.numThreads = [NSNumber numberWithInt:2];
	m_order = [[Order alloc] init];
}

- (IBAction)withDateFormatterPressed:(id)sender {

	printf("\nWith NSDateFormatter.\n-------------------------------------\n");
	[m_order setNumThreads:[m_numThreads intValue]];
	[m_order orderWorkWithDateFormatter:YES];
}

- (IBAction)withoutDateFormatterPressed:(id)sender {

	printf("\nWithout NSDateFormatter.\n-------------------------------------\n");
	[m_order setNumThreads:[m_numThreads intValue]];
	[m_order orderWorkWithDateFormatter:NO];
}

@end