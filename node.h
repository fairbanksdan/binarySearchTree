//
//  node.h
//  Binary Search Tree
//
//  Created by Daniel Fairbanks on 5/19/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface node : NSObject

+(id)nodeWithValue:(NSInteger)value;
-(void)addNode:(node *)newNode;

@property (nonatomic) NSInteger value;
@property (strong,nonatomic) node *leftChild;
@property (strong,nonatomic) node *rightChild;


@end
