//
//  ViewController.m
//  LDSScriptureMaster
//
//  Created by Mac User on 10/14/15.
//  Copyright © 2015 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"
#import "TopicCollectionViewCell.h"

@interface ViewController () <UICollectionViewDataSource>

@property (nonatomic, strong) NSArray* topics;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"LDSScriptures" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    NSError *error = nil;
    self.topics = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    
    if (error != nil) {
        // Oh no!
    }
    
    NSLog(@"It's working");
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TopicCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Topic" forIndexPath:indexPath];
    
    NSLog(@"Returning cell for item %@", @(indexPath.item));
    
    NSDictionary *topicDictionary = self.topics[indexPath.item];
    
    cell.topicLabel.text = topicDictionary[@"topic"];
    
    // Customize cell
    
    cell.layer.cornerRadius = 5;
    cell.layer.masksToBounds = YES;
    
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.topics.count;
}

- (NSArray *)scriptureTopics {
    
    return @[@"America", @"Apostasy", @"Atonement", @"Baptism", @"Bible", @"Book Of Mormon", @"Chastity", @"Church Of Jesus Christ", @"Enduring To The End", @"Faith And Works", @"Fall Of Man", @"Godhead", @"Holy Ghost", @"Jesus Christ", @"Leadership", @"Prayer And Testimony", @"Pre-Earth Life", @"Priesthood", @"Repentance", @"Restoration", @"Resurrection", @"Sacrament", @"Satan And Sin", @"Second Coming", @"Spirit World"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
