//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/raw/Nat384.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/math/raw/Nat.h"
#include "org/bouncycastle/math/raw/Nat192.h"
#include "org/bouncycastle/math/raw/Nat384.h"

@implementation OrgBouncycastleMathRawNat384

+ (void)mulWithIntArray:(IOSIntArray *)x
           withIntArray:(IOSIntArray *)y
           withIntArray:(IOSIntArray *)zz {
  OrgBouncycastleMathRawNat384_mulWithIntArray_withIntArray_withIntArray_(x, y, zz);
}

+ (void)squareWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)zz {
  OrgBouncycastleMathRawNat384_squareWithIntArray_withIntArray_(x, zz);
}

- (instancetype)init {
  return [super init];
}

@end

void OrgBouncycastleMathRawNat384_mulWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *zz) {
  OrgBouncycastleMathRawNat384_init();
  OrgBouncycastleMathRawNat192_mulWithIntArray_withIntArray_withIntArray_(x, y, zz);
  OrgBouncycastleMathRawNat192_mulWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(x, 6, y, 6, zz, 12);
  jint c18 = OrgBouncycastleMathRawNat192_addToEachOtherWithIntArray_withInt_withIntArray_withInt_(zz, 6, zz, 12);
  jint c12 = c18 + OrgBouncycastleMathRawNat192_addToWithIntArray_withInt_withIntArray_withInt_withInt_(zz, 0, zz, 6, 0);
  c18 += OrgBouncycastleMathRawNat192_addToWithIntArray_withInt_withIntArray_withInt_withInt_(zz, 18, zz, 12, c12);
  IOSIntArray *dx = OrgBouncycastleMathRawNat192_create(), *dy = OrgBouncycastleMathRawNat192_create();
  jboolean neg = OrgBouncycastleMathRawNat192_diffWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(x, 6, x, 0, dx, 0) != OrgBouncycastleMathRawNat192_diffWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(y, 6, y, 0, dy, 0);
  IOSIntArray *tt = OrgBouncycastleMathRawNat192_createExt();
  OrgBouncycastleMathRawNat192_mulWithIntArray_withIntArray_withIntArray_(dx, dy, tt);
  c18 += neg ? OrgBouncycastleMathRawNat_addToWithInt_withIntArray_withInt_withIntArray_withInt_(12, tt, 0, zz, 6) : OrgBouncycastleMathRawNat_subFromWithInt_withIntArray_withInt_withIntArray_withInt_(12, tt, 0, zz, 6);
  OrgBouncycastleMathRawNat_addWordAtWithInt_withInt_withIntArray_withInt_(24, c18, zz, 18);
}

void OrgBouncycastleMathRawNat384_squareWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *zz) {
  OrgBouncycastleMathRawNat384_init();
  OrgBouncycastleMathRawNat192_squareWithIntArray_withIntArray_(x, zz);
  OrgBouncycastleMathRawNat192_squareWithIntArray_withInt_withIntArray_withInt_(x, 6, zz, 12);
  jint c18 = OrgBouncycastleMathRawNat192_addToEachOtherWithIntArray_withInt_withIntArray_withInt_(zz, 6, zz, 12);
  jint c12 = c18 + OrgBouncycastleMathRawNat192_addToWithIntArray_withInt_withIntArray_withInt_withInt_(zz, 0, zz, 6, 0);
  c18 += OrgBouncycastleMathRawNat192_addToWithIntArray_withInt_withIntArray_withInt_withInt_(zz, 18, zz, 12, c12);
  IOSIntArray *dx = OrgBouncycastleMathRawNat192_create();
  OrgBouncycastleMathRawNat192_diffWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(x, 6, x, 0, dx, 0);
  IOSIntArray *tt = OrgBouncycastleMathRawNat192_createExt();
  OrgBouncycastleMathRawNat192_squareWithIntArray_withIntArray_(dx, tt);
  c18 += OrgBouncycastleMathRawNat_subFromWithInt_withIntArray_withInt_withIntArray_withInt_(12, tt, 0, zz, 6);
  OrgBouncycastleMathRawNat_addWordAtWithInt_withInt_withIntArray_withInt_(24, c18, zz, 18);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathRawNat384)
