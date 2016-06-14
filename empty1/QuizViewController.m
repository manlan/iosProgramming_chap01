//
//  QuizViewController.m
//  
//
//  Created by Mac on 16/6/15.
//
//

#import "QuizViewController.h"


@interface QuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@end

@implementation QuizViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 按钮

-(IBAction)showQuestion:(id)sender
{
    NSLog(@"showQuestion");
    
    currentQuestionIndex++;
    if (currentQuestionIndex == [self.questions count] )
    {
        currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[currentQuestionIndex];
    self.questionLabel.text = question;
    
    self.answerLabel.text = @"???";
}

-(IBAction)showAnswer:(id)sender
{
    NSLog(@"showAnser");
    
    NSString *answer = self.answers[currentQuestionIndex];
    self.answerLabel.text = answer;
}

#pragma mark - NIB
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.questions = @[@"From what is cognac made?", @"what is 7+7?",
                           @"What is the captital of Vermont?"];
        self.answers = @[@"Grapes", @"14", @"Montpelier"];
        
    }
    return self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
