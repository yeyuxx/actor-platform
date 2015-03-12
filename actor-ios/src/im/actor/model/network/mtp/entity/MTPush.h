//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/MTPush.java
//

#ifndef _MTMTPush_H_
#define _MTMTPush_H_

@class BSDataInput;
@class BSDataOutput;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"

#define MTMTPush_HEADER 5

@interface MTMTPush : MTProtoStruct {
}

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

- (IOSByteArray *)getPayload;

- (jbyte)getHeader;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(MTMTPush)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(MTMTPush, HEADER, jbyte)
CF_EXTERN_C_END

typedef MTMTPush ImActorModelNetworkMtpEntityMTPush;

J2OBJC_TYPE_LITERAL_HEADER(MTMTPush)

#endif // _MTMTPush_H_
