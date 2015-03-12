//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/custom/sec/SecP192R1Field.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP192R1Field.h"
#include "org/bouncycastle/math/raw/Nat.h"
#include "org/bouncycastle/math/raw/Nat192.h"

__attribute__((unused)) static void OrgBouncycastleMathEcCustomSecSecP192R1Field_addPInvToWithIntArray_(IOSIntArray *z);
__attribute__((unused)) static void OrgBouncycastleMathEcCustomSecSecP192R1Field_subPInvFromWithIntArray_(IOSIntArray *z);

@interface OrgBouncycastleMathEcCustomSecSecP192R1Field () {
}

+ (void)addPInvToWithIntArray:(IOSIntArray *)z;

+ (void)subPInvFromWithIntArray:(IOSIntArray *)z;
@end

BOOL OrgBouncycastleMathEcCustomSecSecP192R1Field_initialized = NO;

@implementation OrgBouncycastleMathEcCustomSecSecP192R1Field

IOSIntArray * OrgBouncycastleMathEcCustomSecSecP192R1Field_P_;
IOSIntArray * OrgBouncycastleMathEcCustomSecSecP192R1Field_PExt_;
IOSIntArray * OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_;

+ (void)addWithIntArray:(IOSIntArray *)x
           withIntArray:(IOSIntArray *)y
           withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_addWithIntArray_withIntArray_withIntArray_(x, y, z);
}

+ (void)addExtWithIntArray:(IOSIntArray *)xx
              withIntArray:(IOSIntArray *)yy
              withIntArray:(IOSIntArray *)zz {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_addExtWithIntArray_withIntArray_withIntArray_(xx, yy, zz);
}

+ (void)addOneWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_addOneWithIntArray_withIntArray_(x, z);
}

+ (IOSIntArray *)fromBigIntegerWithJavaMathBigInteger:(JavaMathBigInteger *)x {
  return OrgBouncycastleMathEcCustomSecSecP192R1Field_fromBigIntegerWithJavaMathBigInteger_(x);
}

+ (void)halfWithIntArray:(IOSIntArray *)x
            withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_halfWithIntArray_withIntArray_(x, z);
}

+ (void)multiplyWithIntArray:(IOSIntArray *)x
                withIntArray:(IOSIntArray *)y
                withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_multiplyWithIntArray_withIntArray_withIntArray_(x, y, z);
}

+ (void)multiplyAddToExtWithIntArray:(IOSIntArray *)x
                        withIntArray:(IOSIntArray *)y
                        withIntArray:(IOSIntArray *)zz {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_multiplyAddToExtWithIntArray_withIntArray_withIntArray_(x, y, zz);
}

+ (void)negateWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_negateWithIntArray_withIntArray_(x, z);
}

+ (void)reduceWithIntArray:(IOSIntArray *)xx
              withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_reduceWithIntArray_withIntArray_(xx, z);
}

+ (void)reduce32WithInt:(jint)x
           withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_reduce32WithInt_withIntArray_(x, z);
}

+ (void)squareWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_squareWithIntArray_withIntArray_(x, z);
}

+ (void)squareNWithIntArray:(IOSIntArray *)x
                    withInt:(jint)n
               withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_squareNWithIntArray_withInt_withIntArray_(x, n, z);
}

+ (void)subtractWithIntArray:(IOSIntArray *)x
                withIntArray:(IOSIntArray *)y
                withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_subtractWithIntArray_withIntArray_withIntArray_(x, y, z);
}

+ (void)subtractExtWithIntArray:(IOSIntArray *)xx
                   withIntArray:(IOSIntArray *)yy
                   withIntArray:(IOSIntArray *)zz {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_subtractExtWithIntArray_withIntArray_withIntArray_(xx, yy, zz);
}

+ (void)twiceWithIntArray:(IOSIntArray *)x
             withIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_twiceWithIntArray_withIntArray_(x, z);
}

+ (void)addPInvToWithIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_addPInvToWithIntArray_(z);
}

+ (void)subPInvFromWithIntArray:(IOSIntArray *)z {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_subPInvFromWithIntArray_(z);
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [OrgBouncycastleMathEcCustomSecSecP192R1Field class]) {
    OrgBouncycastleMathEcCustomSecSecP192R1Field_P_ = [IOSIntArray newArrayWithInts:(jint[]){ (jint) 0xFFFFFFFF, (jint) 0xFFFFFFFF, (jint) 0xFFFFFFFE, (jint) 0xFFFFFFFF, (jint) 0xFFFFFFFF, (jint) 0xFFFFFFFF } count:6];
    OrgBouncycastleMathEcCustomSecSecP192R1Field_PExt_ = [IOSIntArray newArrayWithInts:(jint[]){ (jint) 0x00000001, (jint) 0x00000000, (jint) 0x00000002, (jint) 0x00000000, (jint) 0x00000001, (jint) 0x00000000, (jint) 0xFFFFFFFE, (jint) 0xFFFFFFFF, (jint) 0xFFFFFFFD, (jint) 0xFFFFFFFF, (jint) 0xFFFFFFFF, (jint) 0xFFFFFFFF } count:12];
    OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_ = [IOSIntArray newArrayWithInts:(jint[]){ (jint) 0xFFFFFFFF, (jint) 0xFFFFFFFF, (jint) 0xFFFFFFFD, (jint) 0xFFFFFFFF, (jint) 0xFFFFFFFE, (jint) 0xFFFFFFFF, (jint) 0x00000001, (jint) 0x00000000, (jint) 0x00000002 } count:9];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleMathEcCustomSecSecP192R1Field)
  }
}

@end

void OrgBouncycastleMathEcCustomSecSecP192R1Field_addWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jint c = OrgBouncycastleMathRawNat192_addWithIntArray_withIntArray_withIntArray_(x, y, z);
  if (c != 0 || (IOSIntArray_Get(nil_chk(z), 5) == OrgBouncycastleMathEcCustomSecSecP192R1Field_P5 && OrgBouncycastleMathRawNat192_gteWithIntArray_withIntArray_(z, OrgBouncycastleMathEcCustomSecSecP192R1Field_P_))) {
    OrgBouncycastleMathEcCustomSecSecP192R1Field_addPInvToWithIntArray_(z);
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_addExtWithIntArray_withIntArray_withIntArray_(IOSIntArray *xx, IOSIntArray *yy, IOSIntArray *zz) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jint c = OrgBouncycastleMathRawNat_addWithInt_withIntArray_withIntArray_withIntArray_(12, xx, yy, zz);
  if (c != 0 || (IOSIntArray_Get(nil_chk(zz), 11) == OrgBouncycastleMathEcCustomSecSecP192R1Field_PExt11 && OrgBouncycastleMathRawNat_gteWithInt_withIntArray_withIntArray_(12, zz, OrgBouncycastleMathEcCustomSecSecP192R1Field_PExt_))) {
    if (OrgBouncycastleMathRawNat_addToWithInt_withIntArray_withIntArray_(((IOSIntArray *) nil_chk(OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_))->size_, OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_, zz) != 0) {
      OrgBouncycastleMathRawNat_incAtWithInt_withIntArray_withInt_(12, zz, OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_->size_);
    }
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_addOneWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jint c = OrgBouncycastleMathRawNat_incWithInt_withIntArray_withIntArray_(6, x, z);
  if (c != 0 || (IOSIntArray_Get(nil_chk(z), 5) == OrgBouncycastleMathEcCustomSecSecP192R1Field_P5 && OrgBouncycastleMathRawNat192_gteWithIntArray_withIntArray_(z, OrgBouncycastleMathEcCustomSecSecP192R1Field_P_))) {
    OrgBouncycastleMathEcCustomSecSecP192R1Field_addPInvToWithIntArray_(z);
  }
}

IOSIntArray *OrgBouncycastleMathEcCustomSecSecP192R1Field_fromBigIntegerWithJavaMathBigInteger_(JavaMathBigInteger *x) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  IOSIntArray *z = OrgBouncycastleMathRawNat192_fromBigIntegerWithJavaMathBigInteger_(x);
  if (IOSIntArray_Get(nil_chk(z), 5) == OrgBouncycastleMathEcCustomSecSecP192R1Field_P5 && OrgBouncycastleMathRawNat192_gteWithIntArray_withIntArray_(z, OrgBouncycastleMathEcCustomSecSecP192R1Field_P_)) {
    OrgBouncycastleMathRawNat192_subFromWithIntArray_withIntArray_(OrgBouncycastleMathEcCustomSecSecP192R1Field_P_, z);
  }
  return z;
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_halfWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  if ((IOSIntArray_Get(nil_chk(x), 0) & 1) == 0) {
    OrgBouncycastleMathRawNat_shiftDownBitWithInt_withIntArray_withInt_withIntArray_(6, x, 0, z);
  }
  else {
    jint c = OrgBouncycastleMathRawNat192_addWithIntArray_withIntArray_withIntArray_(x, OrgBouncycastleMathEcCustomSecSecP192R1Field_P_, z);
    OrgBouncycastleMathRawNat_shiftDownBitWithInt_withIntArray_withInt_(6, z, c);
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_multiplyWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  IOSIntArray *tt = OrgBouncycastleMathRawNat192_createExt();
  OrgBouncycastleMathRawNat192_mulWithIntArray_withIntArray_withIntArray_(x, y, tt);
  OrgBouncycastleMathEcCustomSecSecP192R1Field_reduceWithIntArray_withIntArray_(tt, z);
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_multiplyAddToExtWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *zz) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jint c = OrgBouncycastleMathRawNat192_mulAddToWithIntArray_withIntArray_withIntArray_(x, y, zz);
  if (c != 0 || (IOSIntArray_Get(nil_chk(zz), 11) == OrgBouncycastleMathEcCustomSecSecP192R1Field_PExt11 && OrgBouncycastleMathRawNat_gteWithInt_withIntArray_withIntArray_(12, zz, OrgBouncycastleMathEcCustomSecSecP192R1Field_PExt_))) {
    if (OrgBouncycastleMathRawNat_addToWithInt_withIntArray_withIntArray_(((IOSIntArray *) nil_chk(OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_))->size_, OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_, zz) != 0) {
      OrgBouncycastleMathRawNat_incAtWithInt_withIntArray_withInt_(12, zz, OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_->size_);
    }
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_negateWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  if (OrgBouncycastleMathRawNat192_isZeroWithIntArray_(x)) {
    OrgBouncycastleMathRawNat192_zeroWithIntArray_(z);
  }
  else {
    OrgBouncycastleMathRawNat192_subWithIntArray_withIntArray_withIntArray_(OrgBouncycastleMathEcCustomSecSecP192R1Field_P_, x, z);
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_reduceWithIntArray_withIntArray_(IOSIntArray *xx, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jlong xx06 = IOSIntArray_Get(nil_chk(xx), 6) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M, xx07 = IOSIntArray_Get(xx, 7) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M, xx08 = IOSIntArray_Get(xx, 8) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M;
  jlong xx09 = IOSIntArray_Get(xx, 9) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M, xx10 = IOSIntArray_Get(xx, 10) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M, xx11 = IOSIntArray_Get(xx, 11) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M;
  jlong t0 = xx06 + xx10;
  jlong t1 = xx07 + xx11;
  jlong cc = 0;
  cc += (IOSIntArray_Get(xx, 0) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) + t0;
  jint z0 = (jint) cc;
  RShiftAssignLong(&cc, 32);
  cc += (IOSIntArray_Get(xx, 1) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) + t1;
  *IOSIntArray_GetRef(nil_chk(z), 1) = (jint) cc;
  RShiftAssignLong(&cc, 32);
  t0 += xx08;
  t1 += xx09;
  cc += (IOSIntArray_Get(xx, 2) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) + t0;
  jlong z2 = cc & OrgBouncycastleMathEcCustomSecSecP192R1Field_M;
  RShiftAssignLong(&cc, 32);
  cc += (IOSIntArray_Get(xx, 3) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) + t1;
  *IOSIntArray_GetRef(z, 3) = (jint) cc;
  RShiftAssignLong(&cc, 32);
  t0 -= xx06;
  t1 -= xx07;
  cc += (IOSIntArray_Get(xx, 4) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) + t0;
  *IOSIntArray_GetRef(z, 4) = (jint) cc;
  RShiftAssignLong(&cc, 32);
  cc += (IOSIntArray_Get(xx, 5) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) + t1;
  *IOSIntArray_GetRef(z, 5) = (jint) cc;
  RShiftAssignLong(&cc, 32);
  z2 += cc;
  cc += (z0 & OrgBouncycastleMathEcCustomSecSecP192R1Field_M);
  *IOSIntArray_GetRef(z, 0) = (jint) cc;
  RShiftAssignLong(&cc, 32);
  if (cc != 0) {
    cc += (IOSIntArray_Get(z, 1) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M);
    *IOSIntArray_GetRef(z, 1) = (jint) cc;
    z2 += RShift64(cc, 32);
  }
  *IOSIntArray_GetRef(z, 2) = (jint) z2;
  cc = RShift64(z2, 32);
  if ((cc != 0 && OrgBouncycastleMathRawNat_incAtWithInt_withIntArray_withInt_(6, z, 3) != 0) || (IOSIntArray_Get(z, 5) == OrgBouncycastleMathEcCustomSecSecP192R1Field_P5 && OrgBouncycastleMathRawNat192_gteWithIntArray_withIntArray_(z, OrgBouncycastleMathEcCustomSecSecP192R1Field_P_))) {
    OrgBouncycastleMathEcCustomSecSecP192R1Field_addPInvToWithIntArray_(z);
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_reduce32WithInt_withIntArray_(jint x, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jlong cc = 0;
  if (x != 0) {
    jlong xx06 = x & OrgBouncycastleMathEcCustomSecSecP192R1Field_M;
    cc += (IOSIntArray_Get(nil_chk(z), 0) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) + xx06;
    *IOSIntArray_GetRef(z, 0) = (jint) cc;
    RShiftAssignLong(&cc, 32);
    if (cc != 0) {
      cc += (IOSIntArray_Get(z, 1) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M);
      *IOSIntArray_GetRef(z, 1) = (jint) cc;
      RShiftAssignLong(&cc, 32);
    }
    cc += (IOSIntArray_Get(z, 2) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) + xx06;
    *IOSIntArray_GetRef(z, 2) = (jint) cc;
    RShiftAssignLong(&cc, 32);
  }
  if ((cc != 0 && OrgBouncycastleMathRawNat_incAtWithInt_withIntArray_withInt_(6, z, 3) != 0) || (IOSIntArray_Get(nil_chk(z), 5) == OrgBouncycastleMathEcCustomSecSecP192R1Field_P5 && OrgBouncycastleMathRawNat192_gteWithIntArray_withIntArray_(z, OrgBouncycastleMathEcCustomSecSecP192R1Field_P_))) {
    OrgBouncycastleMathEcCustomSecSecP192R1Field_addPInvToWithIntArray_(z);
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_squareWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  IOSIntArray *tt = OrgBouncycastleMathRawNat192_createExt();
  OrgBouncycastleMathRawNat192_squareWithIntArray_withIntArray_(x, tt);
  OrgBouncycastleMathEcCustomSecSecP192R1Field_reduceWithIntArray_withIntArray_(tt, z);
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_squareNWithIntArray_withInt_withIntArray_(IOSIntArray *x, jint n, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  IOSIntArray *tt = OrgBouncycastleMathRawNat192_createExt();
  OrgBouncycastleMathRawNat192_squareWithIntArray_withIntArray_(x, tt);
  OrgBouncycastleMathEcCustomSecSecP192R1Field_reduceWithIntArray_withIntArray_(tt, z);
  while (--n > 0) {
    OrgBouncycastleMathRawNat192_squareWithIntArray_withIntArray_(z, tt);
    OrgBouncycastleMathEcCustomSecSecP192R1Field_reduceWithIntArray_withIntArray_(tt, z);
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_subtractWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jint c = OrgBouncycastleMathRawNat192_subWithIntArray_withIntArray_withIntArray_(x, y, z);
  if (c != 0) {
    OrgBouncycastleMathEcCustomSecSecP192R1Field_subPInvFromWithIntArray_(z);
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_subtractExtWithIntArray_withIntArray_withIntArray_(IOSIntArray *xx, IOSIntArray *yy, IOSIntArray *zz) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jint c = OrgBouncycastleMathRawNat_subWithInt_withIntArray_withIntArray_withIntArray_(12, xx, yy, zz);
  if (c != 0) {
    if (OrgBouncycastleMathRawNat_subFromWithInt_withIntArray_withIntArray_(((IOSIntArray *) nil_chk(OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_))->size_, OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_, zz) != 0) {
      OrgBouncycastleMathRawNat_decAtWithInt_withIntArray_withInt_(12, zz, OrgBouncycastleMathEcCustomSecSecP192R1Field_PExtInv_->size_);
    }
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_twiceWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jint c = OrgBouncycastleMathRawNat_shiftUpBitWithInt_withIntArray_withInt_withIntArray_(6, x, 0, z);
  if (c != 0 || (IOSIntArray_Get(nil_chk(z), 5) == OrgBouncycastleMathEcCustomSecSecP192R1Field_P5 && OrgBouncycastleMathRawNat192_gteWithIntArray_withIntArray_(z, OrgBouncycastleMathEcCustomSecSecP192R1Field_P_))) {
    OrgBouncycastleMathEcCustomSecSecP192R1Field_addPInvToWithIntArray_(z);
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_addPInvToWithIntArray_(IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jlong c = (IOSIntArray_Get(nil_chk(z), 0) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) + 1;
  *IOSIntArray_GetRef(z, 0) = (jint) c;
  RShiftAssignLong(&c, 32);
  if (c != 0) {
    c += (IOSIntArray_Get(z, 1) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M);
    *IOSIntArray_GetRef(z, 1) = (jint) c;
    RShiftAssignLong(&c, 32);
  }
  c += (IOSIntArray_Get(z, 2) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) + 1;
  *IOSIntArray_GetRef(z, 2) = (jint) c;
  RShiftAssignLong(&c, 32);
  if (c != 0) {
    OrgBouncycastleMathRawNat_incAtWithInt_withIntArray_withInt_(6, z, 3);
  }
}

void OrgBouncycastleMathEcCustomSecSecP192R1Field_subPInvFromWithIntArray_(IOSIntArray *z) {
  OrgBouncycastleMathEcCustomSecSecP192R1Field_init();
  jlong c = (IOSIntArray_Get(nil_chk(z), 0) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) - 1;
  *IOSIntArray_GetRef(z, 0) = (jint) c;
  RShiftAssignLong(&c, 32);
  if (c != 0) {
    c += (IOSIntArray_Get(z, 1) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M);
    *IOSIntArray_GetRef(z, 1) = (jint) c;
    RShiftAssignLong(&c, 32);
  }
  c += (IOSIntArray_Get(z, 2) & OrgBouncycastleMathEcCustomSecSecP192R1Field_M) - 1;
  *IOSIntArray_GetRef(z, 2) = (jint) c;
  RShiftAssignLong(&c, 32);
  if (c != 0) {
    OrgBouncycastleMathRawNat_decAtWithInt_withIntArray_withInt_(6, z, 3);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcCustomSecSecP192R1Field)
