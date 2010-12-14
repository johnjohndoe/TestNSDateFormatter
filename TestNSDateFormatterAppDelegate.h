#import <Cocoa/Cocoa.h>
#import "Order.h"


@interface TestNSDateFormatterAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow*	m_window;
	Order*		m_order;
	NSNumber*	m_numThreads;
}

@property (assign) IBOutlet NSWindow* window;
@property (readwrite, assign) NSNumber* numThreads;

- (IBAction)withDateFormatterPressed:(id)sender;
- (IBAction)withoutDateFormatterPressed:(id)sender;

@end
