//
//  BinarySearchTree.h
//  Binary Search Tree
//
//  Created by Daniel Fairbanks on 5/19/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "node.h"

@interface BinarySearchTree : NSObject

@property (strong, nonatomic) node *root;

-(void)addValue:(NSInteger)value;
-(node *)findNodeForValue:(NSInteger)value;
-(void)deleteNodeWithValue:(NSInteger)value;


@end
