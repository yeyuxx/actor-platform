//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/engines/RSACoreEngine.java
//

#ifndef _OrgBouncycastleCryptoEnginesRSACoreEngine_H_
#define _OrgBouncycastleCryptoEnginesRSACoreEngine_H_

@class IOSByteArray;
@class JavaMathBigInteger;
@class OrgBouncycastleCryptoParamsRSAKeyParameters;
@protocol OrgBouncycastleCryptoCipherParameters;

#include "J2ObjC_header.h"

@interface OrgBouncycastleCryptoEnginesRSACoreEngine : NSObject {
}

- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)param OBJC_METHOD_FAMILY_NONE;

- (jint)getInputBlockSize;

- (jint)getOutputBlockSize;

- (JavaMathBigInteger *)convertInputWithByteArray:(IOSByteArray *)inArg
                                          withInt:(jint)inOff
                                          withInt:(jint)inLen;

- (IOSByteArray *)convertOutputWithJavaMathBigInteger:(JavaMathBigInteger *)result;

- (JavaMathBigInteger *)processBlockWithJavaMathBigInteger:(JavaMathBigInteger *)input;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoEnginesRSACoreEngine)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoEnginesRSACoreEngine)

#endif // _OrgBouncycastleCryptoEnginesRSACoreEngine_H_
