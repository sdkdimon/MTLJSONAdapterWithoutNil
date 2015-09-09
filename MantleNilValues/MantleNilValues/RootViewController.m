//
//  ViewController.m
//  MantleNilValues
//
//  Created by dimon on 08/09/15.
//  Copyright (c) 2015 dimon. All rights reserved.
//

#import "RootViewController.h"
#import "Message.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Message *message1 = [[Message alloc] init];
    [message1 setIdentifier:@"message1"];
    [message1 setCaption:@"None message"];
    [message1 setMessageType:MessageTypeNone];
    
    Message *message2 = [[Message alloc] init];
    [message2 setIdentifier:@"message2"];
    [message2 setCaption:@"Text message"];
    [message2 setMessageType:MessageTypeText];
    
    Message *message3 = [[Message alloc] init];
    [message3 setIdentifier:@"message3"];
    [message3 setCaption:@"Media message"];
    [message3 setMessageType:MessageTypeMedia];
    
    Message *message4 = [[Message alloc] init];
    [message4 setIdentifier:@"message4"];
    [message4 setCaption:nil];
    [message4 setMessageType:MessageTypeNone];
    
    
    NSDictionary *JSONDict = [MTLJSONAdapterWithoutNil JSONDictionaryFromModel:message1 error:nil];
    
    NSArray *JSONArray = [MTLJSONAdapterWithoutNil JSONArrayFromModels:@[message1,message2,message3,message4] error:nil];
    
    
    NSLog(@"%@",JSONDict);
    NSLog(@"%@",JSONArray);
    
    
    NSDictionary *JSONMessage = @{@"id" : @"123",
                                  @"caption" : @"test maessage",
                                  @"messageType" : @"TextMessage"};
    
    Message *msg = [MTLJSONAdapterWithoutNil modelOfClass:[Message class] fromJSONDictionary:JSONMessage error:nil];
    
    NSLog(@"%@",msg);
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
