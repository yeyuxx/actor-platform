//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/custom/djb/Curve25519Field.java
//

#ifndef _OrgBouncycastleMathEcCustomDjbCurve25519Field_H_
#define _OrgBouncycastleMathEcCustomDjbCurve25519Field_H_

@class IOSIntArray;
@class JavaMathBigInteger;

#include "J2ObjC_header.h"

#define OrgBouncycastleMathEcCustomDjbCurve25519Field_M 4294967295LL
#define OrgBouncycastleMathEcCustomDjbCurve25519Field_P7 2147483647
#define OrgBouncycastleMathEcCustomDjbCurve25519Field_PInv 19

@interface OrgBouncycastleMathEcCustomDjbCurve25519Field : NSObject {
}

+ (void)addWithIntArray:(IOSIntArray *)x
           withIntArray:(IOSIntArray *)y
           withIntArray:(IOSIntArray *)z;

+ (void)addExtWithIntArray:(IOSIntArray *)xx
              withIntArray:(IOSIntArray *)yy
              withIntArray:(IOSIntArray *)zz;

+ (void)addOneWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z;

+ (IOSIntArray *)fromBigIntegerWithJavaMathBigInteger:(JavaMathBigInteger *)x;

+ (void)halfWithIntArray:(IOSIntArray *)x
            withIntArray:(IOSIntArray *)z;

+ (void)multiplyWithIntArray:(IOSIntArray *)x
                withIntArray:(IOSIntArray *)y
                withIntArray:(IOSIntArray *)z;

+ (void)multiplyAddToExtWithIntArray:(IOSIntArray *)x
                        withIntArray:(IOSIntArray *)y
                        withIntArray:(IOSIntArray *)zz;

+ (void)negateWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z;

+ (void)reduceWithIntArray:(IOSIntArray *)xx
              withIntArray:(IOSIntArray *)z;

+ (void)reduce27WithInt:(jint)x
           withIntArray:(IOSIntArray *)z;

+ (void)squareWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z;

+ (void)squareNWithIntArray:(IOSIntArray *)x
                    withInt:(jint)n
               withIntArray:(IOSIntArray *)z;

+ (void)subtractWithIntArray:(IOSIntArray *)x
                withIntArray:(IOSIntArray *)y
                withIntArray:(IOSIntArray *)z;

+ (void)subtractExtWithIntArray:(IOSIntArray *)xx
                   withIntArray:(IOSIntArray *)yy
                   withIntArray:(IOSIntArray *)zz;

+ (void)twiceWithIntArray:(IOSIntArray *)x
             withIntArray:(IOSIntArray *)z;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleMathEcCustomDjbCurve25519Field_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleMathEcCustomDjbCurve25519Field)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_addWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_addExtWithIntArray_withIntArray_withIntArray_(IOSIntArray *xx, IOSIntArray *yy, IOSIntArray *zz);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_addOneWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT IOSIntArray *OrgBouncycastleMathEcCustomDjbCurve25519Field_fromBigIntegerWithJavaMathBigInteger_(JavaMathBigInteger *x);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_halfWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyAddToExtWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *zz);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_negateWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_reduceWithIntArray_withIntArray_(IOSIntArray *xx, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_reduce27WithInt_withIntArray_(jint x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_squareNWithIntArray_withInt_withIntArray_(IOSIntArray *x, jint n, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractExtWithIntArray_withIntArray_withIntArray_(IOSIntArray *xx, IOSIntArray *yy, IOSIntArray *zz);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_twiceWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcCustomDjbCurve25519Field, M, jlong)

FOUNDATION_EXPORT IOSIntArray *OrgBouncycastleMathEcCustomDjbCurve25519Field_P_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcCustomDjbCurve25519Field, P_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcCustomDjbCurve25519Field, P7, jint)

FOUNDATION_EXPORT IOSIntArray *OrgBouncycastleMathEcCustomDjbCurve25519Field_PExt_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcCustomDjbCurve25519Field, PExt_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcCustomDjbCurve25519Field, PInv, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcCustomDjbCurve25519Field)

#endif // _OrgBouncycastleMathEcCustomDjbCurve25519Field_H_
