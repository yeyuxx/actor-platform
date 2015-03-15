//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/bouncycastle/BcRsaCipher.java
//

#ifndef _BCBcRsaCipher_H_
#define _BCBcRsaCipher_H_

@class IOSByteArray;
@protocol OrgBouncycastleCryptoAsymmetricBlockCipher;

#include "J2ObjC_header.h"
#include "im/actor/model/crypto/RsaCipher.h"
#include "im/actor/model/crypto/bouncycastle/BcRsaEncryptCipher.h"

@interface BCBcRsaCipher : BCBcRsaEncryptCipher < AMRsaCipher > {
}

- (instancetype)initWithByteArray:(IOSByteArray *)publicKey
                    withByteArray:(IOSByteArray *)privateKey;

- (IOSByteArray *)decryptWithByteArray:(IOSByteArray *)sourceData;

@end

J2OBJC_EMPTY_STATIC_INIT(BCBcRsaCipher)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef BCBcRsaCipher ImActorModelCryptoBouncycastleBcRsaCipher;

J2OBJC_TYPE_LITERAL_HEADER(BCBcRsaCipher)

#endif // _BCBcRsaCipher_H_
