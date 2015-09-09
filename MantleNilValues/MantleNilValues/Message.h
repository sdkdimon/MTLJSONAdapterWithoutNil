//
//  Message.h
//  MantleNilValues
//
//  Created by dimon on 08/09/15.
//  Copyright (c) 2015 dimon. All rights reserved.
//

#import "MTLModel.h"
#import "MTLJSONAdapterWithoutNil.h"

typedef enum{
    MessageTypeNone = 0,
    MessageTypeText,
    MessageTypeMedia
}MessageType;

@interface Message : MTLModel <MTLJSONSerializing>

@property(strong,nonatomic,readwrite) NSString *identifier;
@property(strong,nonatomic,readwrite) NSString *caption;
@property(assign,nonatomic,readwrite) MessageType messageType;

@end
