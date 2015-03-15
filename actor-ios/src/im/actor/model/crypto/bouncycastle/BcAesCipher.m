//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/bouncycastle/BcAesCipher.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/bouncycastle/BcAesCipher.h"
#include "java/lang/System.h"
#include "org/bouncycastle/crypto/BufferedBlockCipher.h"
#include "org/bouncycastle/crypto/CipherParameters.h"
#include "org/bouncycastle/crypto/InvalidCipherTextException.h"
#include "org/bouncycastle/crypto/engines/AESFastEngine.h"
#include "org/bouncycastle/crypto/modes/CBCBlockCipher.h"
#include "org/bouncycastle/crypto/paddings/PKCS7Padding.h"
#include "org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher.h"
#include "org/bouncycastle/crypto/params/KeyParameter.h"
#include "org/bouncycastle/crypto/params/ParametersWithIV.h"

@interface BCBcAesCipher () {
 @public
  IOSByteArray *key_;
  IOSByteArray *iv_;
  id<OrgBouncycastleCryptoCipherParameters> params_;
  OrgBouncycastleCryptoBufferedBlockCipher *encryptionCipher_;
  OrgBouncycastleCryptoBufferedBlockCipher *decryptionCipher_;
}
@end

J2OBJC_FIELD_SETTER(BCBcAesCipher, key_, IOSByteArray *)
J2OBJC_FIELD_SETTER(BCBcAesCipher, iv_, IOSByteArray *)
J2OBJC_FIELD_SETTER(BCBcAesCipher, params_, id<OrgBouncycastleCryptoCipherParameters>)
J2OBJC_FIELD_SETTER(BCBcAesCipher, encryptionCipher_, OrgBouncycastleCryptoBufferedBlockCipher *)
J2OBJC_FIELD_SETTER(BCBcAesCipher, decryptionCipher_, OrgBouncycastleCryptoBufferedBlockCipher *)

@implementation BCBcAesCipher

- (instancetype)initWithByteArray:(IOSByteArray *)key
                    withByteArray:(IOSByteArray *)iv {
  if (self = [super init]) {
    self->key_ = key;
    self->iv_ = iv;
    self->params_ = [[OrgBouncycastleCryptoParamsParametersWithIV alloc] initWithOrgBouncycastleCryptoCipherParameters:[[OrgBouncycastleCryptoParamsKeyParameter alloc] initWithByteArray:key] withByteArray:iv];
  }
  return self;
}

- (IOSByteArray *)getKey {
  return key_;
}

- (IOSByteArray *)getIv {
  return iv_;
}

- (IOSByteArray *)encryptWithByteArray:(IOSByteArray *)source {
  @synchronized(self) {
    if (encryptionCipher_ == nil) {
      encryptionCipher_ = [[OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher alloc] initWithOrgBouncycastleCryptoBlockCipher:[[OrgBouncycastleCryptoModesCBCBlockCipher alloc] initWithOrgBouncycastleCryptoBlockCipher:[[OrgBouncycastleCryptoEnginesAESFastEngine alloc] init]] withOrgBouncycastleCryptoPaddingsBlockCipherPadding:[[OrgBouncycastleCryptoPaddingsPKCS7Padding alloc] init]];
      [encryptionCipher_ init__WithBoolean:YES withOrgBouncycastleCryptoCipherParameters:params_];
    }
    [((OrgBouncycastleCryptoBufferedBlockCipher *) nil_chk(encryptionCipher_)) reset];
    IOSByteArray *buf = [IOSByteArray newArrayWithLength:[encryptionCipher_ getOutputSizeWithInt:((IOSByteArray *) nil_chk(source))->size_]];
    jint len = [encryptionCipher_ processBytesWithByteArray:source withInt:0 withInt:source->size_ withByteArray:buf withInt:0];
    @try {
      len += [encryptionCipher_ doFinalWithByteArray:buf withInt:len];
    }
    @catch (OrgBouncycastleCryptoInvalidCipherTextException *e) {
      [((OrgBouncycastleCryptoInvalidCipherTextException *) nil_chk(e)) printStackTrace];
      return nil;
    }
    IOSByteArray *res = [IOSByteArray newArrayWithLength:len];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf, 0, res, 0, len);
    return res;
  }
}

- (IOSByteArray *)decryptWithByteArray:(IOSByteArray *)source {
  @synchronized(self) {
    if (decryptionCipher_ == nil) {
      decryptionCipher_ = [[OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher alloc] initWithOrgBouncycastleCryptoBlockCipher:[[OrgBouncycastleCryptoModesCBCBlockCipher alloc] initWithOrgBouncycastleCryptoBlockCipher:[[OrgBouncycastleCryptoEnginesAESFastEngine alloc] init]] withOrgBouncycastleCryptoPaddingsBlockCipherPadding:[[OrgBouncycastleCryptoPaddingsPKCS7Padding alloc] init]];
      [decryptionCipher_ init__WithBoolean:NO withOrgBouncycastleCryptoCipherParameters:params_];
    }
    [((OrgBouncycastleCryptoBufferedBlockCipher *) nil_chk(decryptionCipher_)) reset];
    IOSByteArray *buf = [IOSByteArray newArrayWithLength:[decryptionCipher_ getOutputSizeWithInt:((IOSByteArray *) nil_chk(source))->size_]];
    jint len = [decryptionCipher_ processBytesWithByteArray:source withInt:0 withInt:source->size_ withByteArray:buf withInt:0];
    @try {
      len += [decryptionCipher_ doFinalWithByteArray:buf withInt:len];
    }
    @catch (OrgBouncycastleCryptoInvalidCipherTextException *e) {
      [((OrgBouncycastleCryptoInvalidCipherTextException *) nil_chk(e)) printStackTrace];
      return nil;
    }
    IOSByteArray *res = [IOSByteArray newArrayWithLength:len];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf, 0, res, 0, len);
    return res;
  }
}

- (void)copyAllFieldsTo:(BCBcAesCipher *)other {
  [super copyAllFieldsTo:other];
  other->key_ = key_;
  other->iv_ = iv_;
  other->params_ = params_;
  other->encryptionCipher_ = encryptionCipher_;
  other->decryptionCipher_ = decryptionCipher_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BCBcAesCipher)
