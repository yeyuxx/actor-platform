//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/TextMessageEx.java
//

#ifndef _ImActorModelApiTextMessageEx_H_
#define _ImActorModelApiTextMessageEx_H_

@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiTextMessageEx : BSBserObject {
}

+ (ImActorModelApiTextMessageEx *)fromBytesWithInt:(jint)key
                                     withByteArray:(IOSByteArray *)content;

- (jint)getHeader;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiTextMessageEx)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiTextMessageEx *ImActorModelApiTextMessageEx_fromBytesWithInt_withByteArray_(jint key, IOSByteArray *content);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiTextMessageEx)

#endif // _ImActorModelApiTextMessageEx_H_
