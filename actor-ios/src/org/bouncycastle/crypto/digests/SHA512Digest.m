//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/digests/SHA512Digest.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/crypto/digests/LongDigest.h"
#include "org/bouncycastle/crypto/digests/SHA512Digest.h"
#include "org/bouncycastle/util/Memoable.h"
#include "org/bouncycastle/util/Pack.h"

@interface OrgBouncycastleCryptoDigestsSHA512Digest () {
}
@end

@implementation OrgBouncycastleCryptoDigestsSHA512Digest

- (instancetype)init {
  return [super init];
}

- (instancetype)initWithOrgBouncycastleCryptoDigestsSHA512Digest:(OrgBouncycastleCryptoDigestsSHA512Digest *)t {
  return [super initWithOrgBouncycastleCryptoDigestsLongDigest:t];
}

- (instancetype)initWithByteArray:(IOSByteArray *)encodedState {
  if (self = [super init]) {
    [self restoreStateWithByteArray:encodedState];
  }
  return self;
}

- (NSString *)getAlgorithmName {
  return @"SHA-512";
}

- (jint)getDigestSize {
  return OrgBouncycastleCryptoDigestsSHA512Digest_DIGEST_LENGTH;
}

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff {
  [self finish];
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(H1_, outArg, outOff);
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(H2_, outArg, outOff + 8);
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(H3_, outArg, outOff + 16);
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(H4_, outArg, outOff + 24);
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(H5_, outArg, outOff + 32);
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(H6_, outArg, outOff + 40);
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(H7_, outArg, outOff + 48);
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(H8_, outArg, outOff + 56);
  [self reset];
  return OrgBouncycastleCryptoDigestsSHA512Digest_DIGEST_LENGTH;
}

- (void)reset {
  [super reset];
  H1_ = (jlong) 0x6a09e667f3bcc908LL;
  H2_ = (jlong) 0xbb67ae8584caa73bLL;
  H3_ = (jlong) 0x3c6ef372fe94f82bLL;
  H4_ = (jlong) 0xa54ff53a5f1d36f1LL;
  H5_ = (jlong) 0x510e527fade682d1LL;
  H6_ = (jlong) 0x9b05688c2b3e6c1fLL;
  H7_ = (jlong) 0x1f83d9abfb41bd6bLL;
  H8_ = (jlong) 0x5be0cd19137e2179LL;
}

- (id<OrgBouncycastleUtilMemoable>)copy__ {
  return [[OrgBouncycastleCryptoDigestsSHA512Digest alloc] initWithOrgBouncycastleCryptoDigestsSHA512Digest:self];
}

- (void)resetWithOrgBouncycastleUtilMemoable:(id<OrgBouncycastleUtilMemoable>)other {
  OrgBouncycastleCryptoDigestsSHA512Digest *d = (OrgBouncycastleCryptoDigestsSHA512Digest *) check_class_cast(other, [OrgBouncycastleCryptoDigestsSHA512Digest class]);
  [self copyInWithOrgBouncycastleCryptoDigestsLongDigest:d];
}

- (IOSByteArray *)getEncodedState {
  IOSByteArray *encoded = [IOSByteArray newArrayWithLength:[self getEncodedStateSize]];
  [super populateStateWithByteArray:encoded];
  return encoded;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoDigestsSHA512Digest)
