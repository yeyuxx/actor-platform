//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement.java
//

#ifndef _OrgBouncycastleMathEcCustomSecSecP521R1FieldElement_H_
#define _OrgBouncycastleMathEcCustomSecSecP521R1FieldElement_H_

@class IOSIntArray;
@class JavaMathBigInteger;

#include "J2ObjC_header.h"
#include "org/bouncycastle/math/ec/ECFieldElement.h"

@interface OrgBouncycastleMathEcCustomSecSecP521R1FieldElement : OrgBouncycastleMathEcECFieldElement {
 @public
  IOSIntArray *x_;
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)x;

- (instancetype)init;

- (instancetype)initWithIntArray:(IOSIntArray *)x;

- (jboolean)isZero;

- (jboolean)isOne;

- (jboolean)testBitZero;

- (JavaMathBigInteger *)toBigInteger;

- (NSString *)getFieldName;

- (jint)getFieldSize;

- (OrgBouncycastleMathEcECFieldElement *)addWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b;

- (OrgBouncycastleMathEcECFieldElement *)addOne;

- (OrgBouncycastleMathEcECFieldElement *)subtractWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b;

- (OrgBouncycastleMathEcECFieldElement *)multiplyWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b;

- (OrgBouncycastleMathEcECFieldElement *)divideWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b;

- (OrgBouncycastleMathEcECFieldElement *)negate;

- (OrgBouncycastleMathEcECFieldElement *)square;

- (OrgBouncycastleMathEcECFieldElement *)invert;

- (OrgBouncycastleMathEcECFieldElement *)sqrt;

- (jboolean)isEqual:(id)other;

- (NSUInteger)hash;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleMathEcCustomSecSecP521R1FieldElement_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleMathEcCustomSecSecP521R1FieldElement)

J2OBJC_FIELD_SETTER(OrgBouncycastleMathEcCustomSecSecP521R1FieldElement, x_, IOSIntArray *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT JavaMathBigInteger *OrgBouncycastleMathEcCustomSecSecP521R1FieldElement_Q_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcCustomSecSecP521R1FieldElement, Q_, JavaMathBigInteger *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcCustomSecSecP521R1FieldElement)

#endif // _OrgBouncycastleMathEcCustomSecSecP521R1FieldElement_H_
