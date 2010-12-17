#import "TestNSDateFormatterAppDelegate.h"
#import "Order.h"

@implementation TestNSDateFormatterAppDelegate


@synthesize window = m_window;
@synthesize numThreads = m_numThreads;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

	self.numThreads = [NSNumber numberWithInt:2];
	m_order = [[Order alloc] init];
}

- (IBAction)withNSDateFormatterInitPressed:(id)sender {

	printf("\nWith NSDateFormatterInit.\n-------------------------------------\n");
	[m_order setNumThreads:[m_numThreads intValue]];
	[m_order orderWorkWithFormatterType:NSDateFormatterInit];
}

- (IBAction)withNSDateFormatterInitWithDateFormat10_0Pressed:(id)sender {
	
	printf("\nWith NSDateFormatterInitWithDateFormat10_0.\n-------------------------------------\n");
	[m_order setNumThreads:[m_numThreads intValue]];
	[m_order orderWorkWithFormatterType:NSDateFormatterInitWithDateFormat10_0];
}

- (IBAction)withNSDateFormatterInitWithDateFormat10_4Pressed:(id)sender {
	
	printf("\nWith NSDateFormatterInitWithDateFormat10_4.\n-------------------------------------\n");
	[m_order setNumThreads:[m_numThreads intValue]];
	[m_order orderWorkWithFormatterType:NSDateFormatterInitWithDateFormat10_4];
}

- (IBAction)withoutDateFormatterPressed:(id)sender {

	printf("\nWithout NSDateFormatter.\n-------------------------------------\n");
	[m_order setNumThreads:[m_numThreads intValue]];
	[m_order orderWorkWithFormatterType:NoNSDateFormatter];
}

@end