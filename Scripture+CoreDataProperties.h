//
//  Scripture+CoreDataProperties.h
//  LDSScriptureMaster
//
//  Created by Mac User on 10/17/15.
//  Copyright © 2015 Big Nerd Ranch. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Scripture.h"

NS_ASSUME_NONNULL_BEGIN

@interface Scripture (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *book;
@property (nullable, nonatomic, retain) NSNumber *chapter;
@property (nullable, nonatomic, retain) NSString *verse;
@property (nullable, nonatomic, retain) NSString *text;

@end

NS_ASSUME_NONNULL_END
