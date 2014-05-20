//
//  node.m
//  Binary Search Tree
//
//  Created by Daniel Fairbanks on 5/19/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import "node.h"

@implementation node

+(id)nodeWithValue:(NSInteger)value
{
    node *newNode = [node new];
    newNode.value = value;
    
    NSLog(@"Node Value is %ld", (long)newNode.value);
    
    return newNode;
}

-(void)addNode:(node *)newNode
{
    if (newNode.value < self.value) {
        if (!self.leftChild) {
            self.leftChild = newNode;
            return;
        } else
        {
            [self.leftChild addNode:newNode];
        }
    } else if (newNode.value > self.value)
    {
        if (!self.rightChild) {
            self.rightChild = newNode;
        } else
        {
            [self.rightChild addNode:newNode];
            return;
        }
    }
}

@end
