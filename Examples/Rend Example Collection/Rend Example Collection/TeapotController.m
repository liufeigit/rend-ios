//
//  TeapotController.m
//  Rend Example Collection
//
//  Created by Anton Holmquist on 6/26/12.
//  Copyright (c) 2012 Monterosa. All rights reserved.
//

#import "TeapotController.h"

@interface TeapotController ()

@end

@implementation TeapotController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    REWavefrontMesh *teapotMesh = [REMeshCache meshNamed:@"teapot.obj"];
    
    teapotNode_ = [[[TeapotNode alloc] initWithDefaultMesh:teapotMesh] autorelease];
    [teapotNode_ setSizeX:10];
    
    [self.scene addChild:teapotNode_];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    teapotNode_ = nil;
}
                                       

@end
