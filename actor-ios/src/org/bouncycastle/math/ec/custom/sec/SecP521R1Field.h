//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/custom/sec/SecP521R1Field.java
//

#ifndef _OrgBouncycastleMathEcCustomSecSecP521R1Field_H_
#define _OrgBouncycastleMathEcCustomSecSecP521R1Field_H_

@class IOSIntArray;
@class JavaMathBigInteger;

#include "J2ObjC_header.h"

#define OrgBouncycastleMathEcCustomSecSecP521R1Field_P16 511

@interface OrgBouncycastleMathEcCustomSecSecP521R1Field : NSObject {
}

+ (void)addWithIntArray:(IOSIntArray *)x
           withIntArray:(IOSIntArray *)y
           withIntArray:(IOSIntArray *)z;

+ (void)addOneWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z;

+ (IOSIntArray *)fromBigIntegerWithJavaMathBigInteger:(JavaMathBigInteger *)x;

+ (void)halfWithIntArray:(IOSIntArray *)x
            withIntArray:(IOSIntArray *)z;

+ (void)multiplyWithIntArray:(IOSIntArray *)x
                withIntArray:(IOSIntArray *)y
                withIntArray:(IOSIntArray *)z;

+ (void)negateWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z;

+ (void)reduceWithIntArray:(IOSIntArray *)xx
              withIntArray:(IOSIntArray *)z;

+ (void)reduce23WithIntArray:(IOSIntArray *)z;

+ (void)squareWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z;

+ (void)squareNWithIntArray:(IOSIntArray *)x
                    withInt:(jint)n
               withIntArray:(IOSIntArray *)z;

+ (void)subtractWithIntArray:(IOSIntArray *)x
                withIntArray:(IOSIntArray *)y
                withIntArray:(IOSIntArray *)z;

+ (void)twiceWithIntArray:(IOSIntArray *)x
             withIntArray:(IOSIntArray *)z;

+ (void)implMultiplyWithIntArray:(IOSIntArray *)x
                    withIntArray:(IOSIntArray *)y
                    withIntArray:(IOSIntArray *)zz;

+ (void)implSquareWithIntArray:(IOSIntArray *)x
                  withIntArray:(IOSIntArray *)zz;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleMathEcCustomSecSecP521R1Field_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleMathEcCustomSecSecP521R1Field)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_addWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_addOneWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT IOSIntArray *OrgBouncycastleMathEcCustomSecSecP521R1Field_fromBigIntegerWithJavaMathBigInteger_(JavaMathBigInteger *x);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_halfWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_multiplyWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_negateWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_reduceWithIntArray_withIntArray_(IOSIntArray *xx, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_reduce23WithIntArray_(IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_squareWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_squareNWithIntArray_withInt_withIntArray_(IOSIntArray *x, jint n, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_subtractWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_twiceWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_implMultiplyWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *zz);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomSecSecP521R1Field_implSquareWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *zz);

FOUNDATION_EXPORT IOSIntArray *OrgBouncycastleMathEcCustomSecSecP521R1Field_P_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcCustomSecSecP521R1Field, P_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcCustomSecSecP521R1Field, P16, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcCustomSecSecP521R1Field)

#endif // _OrgBouncycastleMathEcCustomSecSecP521R1Field_H_
