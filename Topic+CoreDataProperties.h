//
//  Topic+CoreDataProperties.h
//  LDSScriptureMaster
//
//  Created by Mac User on 10/17/15.
//  Copyright © 2015 Big Nerd Ranch. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Topic.h"

NS_ASSUME_NONNULL_BEGIN

@interface Topic (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *topic;

@end

NS_ASSUME_NONNULL_END
