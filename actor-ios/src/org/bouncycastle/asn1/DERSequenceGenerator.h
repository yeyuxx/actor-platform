//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/DERSequenceGenerator.java
//

#ifndef _OrgBouncycastleAsn1DERSequenceGenerator_H_
#define _OrgBouncycastleAsn1DERSequenceGenerator_H_

@class JavaIoByteArrayOutputStream;
@class JavaIoOutputStream;
@protocol OrgBouncycastleAsn1ASN1Encodable;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/DERGenerator.h"

@interface OrgBouncycastleAsn1DERSequenceGenerator : OrgBouncycastleAsn1DERGenerator {
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                   withInt:(jint)tagNo
                               withBoolean:(jboolean)isExplicit;

- (void)addObjectWithOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)object;

- (JavaIoOutputStream *)getRawOutputStream;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1DERSequenceGenerator)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1DERSequenceGenerator)

#endif // _OrgBouncycastleAsn1DERSequenceGenerator_H_
