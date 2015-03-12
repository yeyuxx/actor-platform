//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/digests/MD5Digest.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/bouncycastle/crypto/digests/GeneralDigest.h"
#include "org/bouncycastle/crypto/digests/MD5Digest.h"
#include "org/bouncycastle/util/Memoable.h"

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint word, IOSByteArray *outArg, jint outOff);
__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint x, jint n);
__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w);
__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w);
__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w);
__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w);

@interface OrgBouncycastleCryptoDigestsMD5Digest () {
 @public
  jint H1_, H2_, H3_, H4_;
  IOSIntArray *X_;
  jint xOff_;
}

- (void)copyInWithOrgBouncycastleCryptoDigestsMD5Digest:(OrgBouncycastleCryptoDigestsMD5Digest *)t OBJC_METHOD_FAMILY_NONE;

- (void)unpackWordWithInt:(jint)word
            withByteArray:(IOSByteArray *)outArg
                  withInt:(jint)outOff;

- (jint)rotateLeftWithInt:(jint)x
                  withInt:(jint)n;

- (jint)FWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;

- (jint)GWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;

- (jint)HWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;

- (jint)KWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoDigestsMD5Digest, X_, IOSIntArray *)

@implementation OrgBouncycastleCryptoDigestsMD5Digest

- (instancetype)init {
  if (self = [super init]) {
    X_ = [IOSIntArray newArrayWithLength:16];
    [self reset];
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleCryptoDigestsMD5Digest:(OrgBouncycastleCryptoDigestsMD5Digest *)t {
  if (self = [super initWithOrgBouncycastleCryptoDigestsGeneralDigest:t]) {
    X_ = [IOSIntArray newArrayWithLength:16];
    [self copyInWithOrgBouncycastleCryptoDigestsMD5Digest:t];
  }
  return self;
}

- (void)copyInWithOrgBouncycastleCryptoDigestsMD5Digest:(OrgBouncycastleCryptoDigestsMD5Digest *)t {
  [super copyInWithOrgBouncycastleCryptoDigestsGeneralDigest:t];
  H1_ = ((OrgBouncycastleCryptoDigestsMD5Digest *) nil_chk(t))->H1_;
  H2_ = t->H2_;
  H3_ = t->H3_;
  H4_ = t->H4_;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(t->X_, 0, X_, 0, ((IOSIntArray *) nil_chk(t->X_))->size_);
  xOff_ = t->xOff_;
}

- (NSString *)getAlgorithmName {
  return @"MD5";
}

- (jint)getDigestSize {
  return OrgBouncycastleCryptoDigestsMD5Digest_DIGEST_LENGTH;
}

- (void)processWordWithByteArray:(IOSByteArray *)inArg
                         withInt:(jint)inOff {
  *IOSIntArray_GetRef(nil_chk(X_), xOff_++) = (IOSByteArray_Get(nil_chk(inArg), inOff) & (jint) 0xff) | (LShift32((IOSByteArray_Get(inArg, inOff + 1) & (jint) 0xff), 8)) | (LShift32((IOSByteArray_Get(inArg, inOff + 2) & (jint) 0xff), 16)) | (LShift32((IOSByteArray_Get(inArg, inOff + 3) & (jint) 0xff), 24));
  if (xOff_ == 16) {
    [self processBlock];
  }
}

- (void)processLengthWithLong:(jlong)bitLength {
  if (xOff_ > 14) {
    [self processBlock];
  }
  *IOSIntArray_GetRef(nil_chk(X_), 14) = (jint) (bitLength & (jint) 0xffffffff);
  *IOSIntArray_GetRef(X_, 15) = (jint) (URShift64(bitLength, 32));
}

- (void)unpackWordWithInt:(jint)word
            withByteArray:(IOSByteArray *)outArg
                  withInt:(jint)outOff {
  OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(self, word, outArg, outOff);
}

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff {
  [self finish];
  OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(self, H1_, outArg, outOff);
  OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(self, H2_, outArg, outOff + 4);
  OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(self, H3_, outArg, outOff + 8);
  OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(self, H4_, outArg, outOff + 12);
  [self reset];
  return OrgBouncycastleCryptoDigestsMD5Digest_DIGEST_LENGTH;
}

- (void)reset {
  [super reset];
  H1_ = (jint) 0x67452301;
  H2_ = (jint) 0xefcdab89;
  H3_ = (jint) 0x98badcfe;
  H4_ = (jint) 0x10325476;
  xOff_ = 0;
  for (jint i = 0; i != ((IOSIntArray *) nil_chk(X_))->size_; i++) {
    *IOSIntArray_GetRef(X_, i) = 0;
  }
}

- (jint)rotateLeftWithInt:(jint)x
                  withInt:(jint)n {
  return OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, x, n);
}

- (jint)FWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, u, v, w);
}

- (jint)GWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, u, v, w);
}

- (jint)HWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, u, v, w);
}

- (jint)KWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, u, v, w);
}

- (void)processBlock {
  jint a = H1_;
  jint b = H2_;
  jint c = H3_;
  jint d = H4_;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 0) + (jint) 0xd76aa478, OrgBouncycastleCryptoDigestsMD5Digest_S11) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 1) + (jint) 0xe8c7b756, OrgBouncycastleCryptoDigestsMD5Digest_S12) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 2) + (jint) 0x242070db, OrgBouncycastleCryptoDigestsMD5Digest_S13) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 3) + (jint) 0xc1bdceee, OrgBouncycastleCryptoDigestsMD5Digest_S14) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 4) + (jint) 0xf57c0faf, OrgBouncycastleCryptoDigestsMD5Digest_S11) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 5) + (jint) 0x4787c62a, OrgBouncycastleCryptoDigestsMD5Digest_S12) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 6) + (jint) 0xa8304613, OrgBouncycastleCryptoDigestsMD5Digest_S13) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 7) + (jint) 0xfd469501, OrgBouncycastleCryptoDigestsMD5Digest_S14) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 8) + (jint) 0x698098d8, OrgBouncycastleCryptoDigestsMD5Digest_S11) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 9) + (jint) 0x8b44f7af, OrgBouncycastleCryptoDigestsMD5Digest_S12) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 10) + (jint) 0xffff5bb1, OrgBouncycastleCryptoDigestsMD5Digest_S13) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 11) + (jint) 0x895cd7be, OrgBouncycastleCryptoDigestsMD5Digest_S14) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 12) + (jint) 0x6b901122, OrgBouncycastleCryptoDigestsMD5Digest_S11) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 13) + (jint) 0xfd987193, OrgBouncycastleCryptoDigestsMD5Digest_S12) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 14) + (jint) 0xa679438e, OrgBouncycastleCryptoDigestsMD5Digest_S13) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 15) + (jint) 0x49b40821, OrgBouncycastleCryptoDigestsMD5Digest_S14) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 1) + (jint) 0xf61e2562, OrgBouncycastleCryptoDigestsMD5Digest_S21) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 6) + (jint) 0xc040b340, OrgBouncycastleCryptoDigestsMD5Digest_S22) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 11) + (jint) 0x265e5a51, OrgBouncycastleCryptoDigestsMD5Digest_S23) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 0) + (jint) 0xe9b6c7aa, OrgBouncycastleCryptoDigestsMD5Digest_S24) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 5) + (jint) 0xd62f105d, OrgBouncycastleCryptoDigestsMD5Digest_S21) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 10) + (jint) 0x02441453, OrgBouncycastleCryptoDigestsMD5Digest_S22) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 15) + (jint) 0xd8a1e681, OrgBouncycastleCryptoDigestsMD5Digest_S23) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 4) + (jint) 0xe7d3fbc8, OrgBouncycastleCryptoDigestsMD5Digest_S24) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 9) + (jint) 0x21e1cde6, OrgBouncycastleCryptoDigestsMD5Digest_S21) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 14) + (jint) 0xc33707d6, OrgBouncycastleCryptoDigestsMD5Digest_S22) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 3) + (jint) 0xf4d50d87, OrgBouncycastleCryptoDigestsMD5Digest_S23) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 8) + (jint) 0x455a14ed, OrgBouncycastleCryptoDigestsMD5Digest_S24) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 13) + (jint) 0xa9e3e905, OrgBouncycastleCryptoDigestsMD5Digest_S21) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 2) + (jint) 0xfcefa3f8, OrgBouncycastleCryptoDigestsMD5Digest_S22) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 7) + (jint) 0x676f02d9, OrgBouncycastleCryptoDigestsMD5Digest_S23) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 12) + (jint) 0x8d2a4c8a, OrgBouncycastleCryptoDigestsMD5Digest_S24) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 5) + (jint) 0xfffa3942, OrgBouncycastleCryptoDigestsMD5Digest_S31) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 8) + (jint) 0x8771f681, OrgBouncycastleCryptoDigestsMD5Digest_S32) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 11) + (jint) 0x6d9d6122, OrgBouncycastleCryptoDigestsMD5Digest_S33) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 14) + (jint) 0xfde5380c, OrgBouncycastleCryptoDigestsMD5Digest_S34) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 1) + (jint) 0xa4beea44, OrgBouncycastleCryptoDigestsMD5Digest_S31) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 4) + (jint) 0x4bdecfa9, OrgBouncycastleCryptoDigestsMD5Digest_S32) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 7) + (jint) 0xf6bb4b60, OrgBouncycastleCryptoDigestsMD5Digest_S33) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 10) + (jint) 0xbebfbc70, OrgBouncycastleCryptoDigestsMD5Digest_S34) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 13) + (jint) 0x289b7ec6, OrgBouncycastleCryptoDigestsMD5Digest_S31) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 0) + (jint) 0xeaa127fa, OrgBouncycastleCryptoDigestsMD5Digest_S32) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 3) + (jint) 0xd4ef3085, OrgBouncycastleCryptoDigestsMD5Digest_S33) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 6) + (jint) 0x04881d05, OrgBouncycastleCryptoDigestsMD5Digest_S34) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 9) + (jint) 0xd9d4d039, OrgBouncycastleCryptoDigestsMD5Digest_S31) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 12) + (jint) 0xe6db99e5, OrgBouncycastleCryptoDigestsMD5Digest_S32) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 15) + (jint) 0x1fa27cf8, OrgBouncycastleCryptoDigestsMD5Digest_S33) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 2) + (jint) 0xc4ac5665, OrgBouncycastleCryptoDigestsMD5Digest_S34) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 0) + (jint) 0xf4292244, OrgBouncycastleCryptoDigestsMD5Digest_S41) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 7) + (jint) 0x432aff97, OrgBouncycastleCryptoDigestsMD5Digest_S42) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 14) + (jint) 0xab9423a7, OrgBouncycastleCryptoDigestsMD5Digest_S43) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 5) + (jint) 0xfc93a039, OrgBouncycastleCryptoDigestsMD5Digest_S44) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 12) + (jint) 0x655b59c3, OrgBouncycastleCryptoDigestsMD5Digest_S41) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 3) + (jint) 0x8f0ccc92, OrgBouncycastleCryptoDigestsMD5Digest_S42) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 10) + (jint) 0xffeff47d, OrgBouncycastleCryptoDigestsMD5Digest_S43) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 1) + (jint) 0x85845dd1, OrgBouncycastleCryptoDigestsMD5Digest_S44) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 8) + (jint) 0x6fa87e4f, OrgBouncycastleCryptoDigestsMD5Digest_S41) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 15) + (jint) 0xfe2ce6e0, OrgBouncycastleCryptoDigestsMD5Digest_S42) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 6) + (jint) 0xa3014314, OrgBouncycastleCryptoDigestsMD5Digest_S43) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 13) + (jint) 0x4e0811a1, OrgBouncycastleCryptoDigestsMD5Digest_S44) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 4) + (jint) 0xf7537e82, OrgBouncycastleCryptoDigestsMD5Digest_S41) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 11) + (jint) 0xbd3af235, OrgBouncycastleCryptoDigestsMD5Digest_S42) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 2) + (jint) 0x2ad7d2bb, OrgBouncycastleCryptoDigestsMD5Digest_S43) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 9) + (jint) 0xeb86d391, OrgBouncycastleCryptoDigestsMD5Digest_S44) + c;
  H1_ += a;
  H2_ += b;
  H3_ += c;
  H4_ += d;
  xOff_ = 0;
  for (jint i = 0; i != X_->size_; i++) {
    *IOSIntArray_GetRef(X_, i) = 0;
  }
}

- (id<OrgBouncycastleUtilMemoable>)copy__ {
  return [[OrgBouncycastleCryptoDigestsMD5Digest alloc] initWithOrgBouncycastleCryptoDigestsMD5Digest:self];
}

- (void)resetWithOrgBouncycastleUtilMemoable:(id<OrgBouncycastleUtilMemoable>)other {
  OrgBouncycastleCryptoDigestsMD5Digest *d = (OrgBouncycastleCryptoDigestsMD5Digest *) check_class_cast(other, [OrgBouncycastleCryptoDigestsMD5Digest class]);
  [self copyInWithOrgBouncycastleCryptoDigestsMD5Digest:d];
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoDigestsMD5Digest *)other {
  [super copyAllFieldsTo:other];
  other->H1_ = H1_;
  other->H2_ = H2_;
  other->H3_ = H3_;
  other->H4_ = H4_;
  other->X_ = X_;
  other->xOff_ = xOff_;
}

@end

void OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint word, IOSByteArray *outArg, jint outOff) {
  *IOSByteArray_GetRef(nil_chk(outArg), outOff) = (jbyte) word;
  *IOSByteArray_GetRef(outArg, outOff + 1) = (jbyte) (URShift32(word, 8));
  *IOSByteArray_GetRef(outArg, outOff + 2) = (jbyte) (URShift32(word, 16));
  *IOSByteArray_GetRef(outArg, outOff + 3) = (jbyte) (URShift32(word, 24));
}

jint OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint x, jint n) {
  return (LShift32(x, n)) | (URShift32(x, (32 - n)));
}

jint OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w) {
  return (u & v) | (~u & w);
}

jint OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w) {
  return (u & w) | (v & ~w);
}

jint OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w) {
  return u ^ v ^ w;
}

jint OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w) {
  return v ^ (u | ~w);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoDigestsMD5Digest)
