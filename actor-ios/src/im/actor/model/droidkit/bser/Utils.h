//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/bser/Utils.java
//

#ifndef _BSUtils_H_
#define _BSUtils_H_

@class IOSByteArray;

#include "J2ObjC_header.h"

@interface BSUtils : NSObject {
}

+ (jint)convertIntWithLong:(jlong)val;

+ (NSString *)convertStringWithByteArray:(IOSByteArray *)data;

+ (NSString *)byteArrayToStringWithByteArray:(IOSByteArray *)data;

+ (NSString *)byteArrayToStringCompactWithByteArray:(IOSByteArray *)data;

+ (IOSByteArray *)intToBytesWithInt:(jint)v;

+ (jlong)bytesToIntWithByteArray:(IOSByteArray *)data;

+ (IOSByteArray *)longToBytesWithLong:(jlong)v;

+ (jlong)bytesToLongWithByteArray:(IOSByteArray *)data;

@end

J2OBJC_EMPTY_STATIC_INIT(BSUtils)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT jint BSUtils_convertIntWithLong_(jlong val);

FOUNDATION_EXPORT NSString *BSUtils_convertStringWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT NSString *BSUtils_byteArrayToStringWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT NSString *BSUtils_byteArrayToStringCompactWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT IOSByteArray *BSUtils_intToBytesWithInt_(jint v);

FOUNDATION_EXPORT jlong BSUtils_bytesToIntWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT IOSByteArray *BSUtils_longToBytesWithLong_(jlong v);

FOUNDATION_EXPORT jlong BSUtils_bytesToLongWithByteArray_(IOSByteArray *data);
CF_EXTERN_C_END

typedef BSUtils ImActorModelDroidkitBserUtils;

J2OBJC_TYPE_LITERAL_HEADER(BSUtils)

#endif // _BSUtils_H_
