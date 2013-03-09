#import "DetailsViewController.h"

@interface DetailsViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *photo;
@property (strong, nonatomic) IBOutlet UILabel *horsePower;
@property (strong, nonatomic) IBOutlet UILabel *liters;
@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) Car *car;

@end

@implementation DetailsViewController

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
    
    self.navigationItem.title = self.car.name;
	self.photo.image = [UIImage imageNamed:self.car.photo];
    self.horsePower.text = self.car.horsePower;
    self.liters.text = self.car.liters;
    self.price.text = self.car.price;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initWithCar:(Car *)car
{
    self.car = car;
}

@end
