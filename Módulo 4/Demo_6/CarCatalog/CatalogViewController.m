#import "CatalogViewController.h"
#import "Car.h"
#import "DetailsViewController.h"

@interface CatalogViewController ()

    @property NSMutableArray *cars;

@end

@implementation CatalogViewController

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
	self.cars = [NSMutableArray new];
    
    Car *f430 = [Car new];
    f430.name = @"F430";
    f430.photo = @"F430_Scuderia.jpg";
    f430.horsePower = @"483 cv";
    f430.liters = @"4.3 l";
    f430.price = @"175.000 €";
    [self.cars addObject:f430];
    
    Car *f458 = [Car new];
    f458.name = @"F458 Italia";
    f458.photo = @"F458_Italia.jpg";
    f458.horsePower = @"562 cv";
    f458.liters = @"4.5 l";
    f458.price = @"226.800 €";
    [self.cars addObject:f458];
    
    Car *laFerrari = [Car new];
    laFerrari.name = @"LaFerrari";
    laFerrari.photo = @"LaFerrari.jpg";
    laFerrari.horsePower = @"960 cv";
    laFerrari.liters = @"6.3 l";
    laFerrari.price = @"1.300.000 €";
    [self.cars addObject:laFerrari];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    int selectedCarIndex = 0;
    if([[segue identifier] isEqualToString:@"F458"])
        selectedCarIndex = 1;
    else if([[segue identifier] isEqualToString:@"LaFerrari"])
        selectedCarIndex = 2;
    
    DetailsViewController *details = [segue destinationViewController];
    [details initWithCar:[self.cars objectAtIndex:selectedCarIndex]];
}

@end
