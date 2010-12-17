#import <Cocoa/Cocoa.h>
#import "Order.h"
#import "WorkerThread.h"


@interface TestNSDateFormatterAppDelegate : NSObject /*<NSApplicationDelegate>*/ {
    NSWindow*	m_window;
	Order*		m_order;
	NSNumber*	m_numThreads;
}

@property (assign) IBOutlet NSWindow* window;
@property (readwrite, assign) NSNumber* numThreads;

- (IBAction)withNSDateFormatterInitPressed:(id)sender;
- (IBAction)withNSDateFormatterInitWithDateFormat10_0Pressed:(id)sender;
- (IBAction)withNSDateFormatterInitWithDateFormat10_4Pressed:(id)sender;
- (IBAction)withoutDateFormatterPressed:(id)sender;

@end
