//
//  Message.m
//  MantleNilValues
//
//  Created by dimon on 08/09/15.
//  Copyright (c) 2015 dimon. All rights reserved.
//

#import "Message.h"
#import <NSValueTransformer+MTLPredefinedTransformerAdditions.h>

@implementation Message

+(NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{@"identifier" : @"id",
             @"caption" : @"caption",
             @"messageType" : @"messageType"};
}

+(NSValueTransformer *)messageTypeJSONTransformer{
    return [NSValueTransformer mtl_valueMappingTransformerWithDictionary:@{ [NSNull null]  : @(MessageTypeNone),
                                                                            @"TextMessage" : @(MessageTypeText),
                                                                            @"MediaMessage" : @(MessageTypeMedia)}];
}

@end
