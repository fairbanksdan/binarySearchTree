//
//  ViewController.m
//  Binary Search Tree
//
//  Created by Daniel Fairbanks on 5/19/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import "ViewController.h"
#import "BinarySearchTree.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    BinarySearchTree *binarySearchTree = [BinarySearchTree new];
    [binarySearchTree addValue:6];
    [binarySearchTree addValue:3];
    [binarySearchTree addValue:9];
    [binarySearchTree addValue:2];
    [binarySearchTree addValue:11];
    [binarySearchTree addValue:1];
    [binarySearchTree addValue:4];
    [binarySearchTree addValue:7];
    [binarySearchTree addValue:5];
    [binarySearchTree addValue:8];
    [binarySearchTree addValue:12];
    [binarySearchTree addValue:10];
    [binarySearchTree addValue:18];
    [binarySearchTree addValue:17];
    [binarySearchTree addValue:16];
    [binarySearchTree addValue:15];
    [binarySearchTree addValue:14];
    [binarySearchTree addValue:13];
    
    
    [binarySearchTree deleteNodeWithValue:12];
    
}

@end
