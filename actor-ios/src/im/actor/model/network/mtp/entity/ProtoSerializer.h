//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/ProtoSerializer.java
//

#ifndef _MTProtoSerializer_H_
#define _MTProtoSerializer_H_

@class BSDataInput;
@class IOSByteArray;
@class MTProtoStruct;
@class MTPush;

#include "J2ObjC_header.h"

@interface MTProtoSerializer : NSObject {
}

+ (MTProtoStruct *)readMessagePayloadWithByteArray:(IOSByteArray *)bs;

+ (MTProtoStruct *)readMessagePayloadWithBSDataInput:(BSDataInput *)bs;

+ (MTProtoStruct *)readRpcResponsePayloadWithByteArray:(IOSByteArray *)data;

+ (MTProtoStruct *)readRpcRequestPayloadWithBSDataInput:(BSDataInput *)bs;

+ (MTPush *)readUpdateWithByteArray:(IOSByteArray *)bs;

+ (MTPush *)readUpdateWithBSDataInput:(BSDataInput *)bs;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(MTProtoSerializer)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT MTProtoStruct *MTProtoSerializer_readMessagePayloadWithByteArray_(IOSByteArray *bs);

FOUNDATION_EXPORT MTProtoStruct *MTProtoSerializer_readMessagePayloadWithBSDataInput_(BSDataInput *bs);

FOUNDATION_EXPORT MTProtoStruct *MTProtoSerializer_readRpcResponsePayloadWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT MTProtoStruct *MTProtoSerializer_readRpcRequestPayloadWithBSDataInput_(BSDataInput *bs);

FOUNDATION_EXPORT MTPush *MTProtoSerializer_readUpdateWithByteArray_(IOSByteArray *bs);

FOUNDATION_EXPORT MTPush *MTProtoSerializer_readUpdateWithBSDataInput_(BSDataInput *bs);
CF_EXTERN_C_END

typedef MTProtoSerializer ImActorModelNetworkMtpEntityProtoSerializer;

J2OBJC_TYPE_LITERAL_HEADER(MTProtoSerializer)

#endif // _MTProtoSerializer_H_
