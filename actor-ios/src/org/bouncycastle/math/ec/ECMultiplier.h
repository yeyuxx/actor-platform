//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/ECMultiplier.java
//

#ifndef _OrgBouncycastleMathEcECMultiplier_H_
#define _OrgBouncycastleMathEcECMultiplier_H_

@class JavaMathBigInteger;
@class OrgBouncycastleMathEcECPoint;

#include "J2ObjC_header.h"

@protocol OrgBouncycastleMathEcECMultiplier < NSObject, JavaObject >

- (OrgBouncycastleMathEcECPoint *)multiplyWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                    withJavaMathBigInteger:(JavaMathBigInteger *)k;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathEcECMultiplier)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcECMultiplier)

#endif // _OrgBouncycastleMathEcECMultiplier_H_
