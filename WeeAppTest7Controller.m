#import "WeeAppTest7Controller.h"

@implementation WeeAppTest7Controller

- (void)viewDidLoad
{
	UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 80)];
	lbl.backgroundColor = [UIColor clearColor];
	lbl.textColor = [UIColor whiteColor];
	lbl.text = @"Hello World";
	lbl.textAlignment = NSTextAlignmentCenter;
	[self.view addSubview:lbl];
	[lbl release];
}

- (CGSize)preferredViewSize
{
	return CGSizeMake(320, 80);
}

@end