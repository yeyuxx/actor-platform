//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/Container.java
//

#ifndef _MTContainer_H_
#define _MTContainer_H_

@class BSDataInput;
@class BSDataOutput;
@class IOSObjectArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"

#define MTContainer_HEADER 10

@interface MTContainer : MTProtoStruct {
}

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

- (instancetype)initWithMTProtoMessageArray:(IOSObjectArray *)messages;

- (IOSObjectArray *)getMessages;

- (jbyte)getHeader;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(MTContainer)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(MTContainer, HEADER, jbyte)
CF_EXTERN_C_END

typedef MTContainer ImActorModelNetworkMtpEntityContainer;

J2OBJC_TYPE_LITERAL_HEADER(MTContainer)

#endif // _MTContainer_H_
