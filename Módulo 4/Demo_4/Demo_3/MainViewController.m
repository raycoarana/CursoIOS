#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation MainViewController
@synthesize imageView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submitButtonPressed:(id)sender {
    NSMutableString* text = [NSMutableString new];
    [text appendFormat:@"Hola %@!", self.nameTextField.text];
    [self.nameTextField endEditing:YES];
    UIAlertView* message = [[UIAlertView alloc]
                            initWithTitle:@"Bienvenido"
                            message:text
                            delegate:self
                            cancelButtonTitle:@"OK"
                            otherButtonTitles: nil];
    [message show];
}
- (IBAction)shareButtonPressed:(id)sender {
    UIActionSheet* actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Compartir"
                                  delegate:self
                                  cancelButtonTitle:@"Cancelar"
                                  destructiveButtonTitle:nil
                                  otherButtonTitles:@"Facebook", @"Twitter", nil];
    
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *) actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSString* message = nil;
    
    if(buttonIndex == actionSheet.firstOtherButtonIndex) {
        message = @"TODO: Compartir con Facebook";
    } else if(buttonIndex == actionSheet.firstOtherButtonIndex + 1) {
        message = @"TODO: Compartir con Twitter";
    } else {
        return;
    }
    
    UIAlertView* alertView = [[UIAlertView alloc]
                            initWithTitle:@"Compartir"
                            message:message
                            delegate:self
                            cancelButtonTitle:@"OK"
                            otherButtonTitles: nil];
    [alertView show];
}

@end
