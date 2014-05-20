//
//  BinarySearchTree.m
//  Binary Search Tree
//
//  Created by Daniel Fairbanks on 5/19/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import "BinarySearchTree.h"

@interface BinarySearchTree()

@end

@implementation BinarySearchTree

-(void)addValue:(NSInteger)value
{
    node *newNode = [node nodeWithValue:value];
    
    if (!self.root) {
        self.root = newNode;
        return;
    } else
    {
        [self.root addNode:newNode];
        return;
    }
}

-(node *)findNodeForValue:(NSInteger)value
{
    node *searchNode = [self findNodeForValue:value onNode:self.root];
    return searchNode;
}

-(node *)findNodeForValue:(NSInteger)value onNode:(node *)node
{
    if (node) {
        if (value == node.value) {
            return node;
        } else if (value < node.value)
        {
            return [self findNodeForValue:value onNode:node.leftChild];
        } else if (value > node.value)
        {
            return [self findNodeForValue:value onNode:node.rightChild];
        }
    }
    
    return node;
}


-(void)deleteNodeWithValue:(NSInteger)value
{
    node *deletedNode = [self findNodeForValue:value];
    node *rightNode;
    node *leftNode;
    node *nextNode;
    
    if (deletedNode != nil) {
        if (deletedNode.leftChild == nil && deletedNode.rightChild == nil) {
            deletedNode = nil;
        }
        else if (deletedNode.leftChild && deletedNode.rightChild == nil)
        {
            deletedNode = deletedNode.leftChild;
        }
        else if (deletedNode.rightChild)
        {
            
        rightNode = deletedNode.rightChild;
        leftNode = rightNode.leftChild;
        nextNode = leftNode.leftChild;
            if (leftNode == nil) {
                deletedNode = rightNode;
            }
        
            else if (leftNode != nil && nextNode == nil)
            {
                deletedNode = leftNode;
//            } else while (nextNode) {
//                deletedNode = nextNode;
//                if (nextNode == nil) {
//                    break;
//                }

            }
        
        }
    }

    NSLog(@"%ld", (long)deletedNode.value);

}

@end
