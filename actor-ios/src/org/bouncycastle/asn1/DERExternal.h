//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/DERExternal.java
//

#ifndef _OrgBouncycastleAsn1DERExternal_H_
#define _OrgBouncycastleAsn1DERExternal_H_

@class OrgBouncycastleAsn1ASN1EncodableVector;
@class OrgBouncycastleAsn1ASN1Integer;
@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@class OrgBouncycastleAsn1ASN1OutputStream;
@class OrgBouncycastleAsn1DERTaggedObject;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"

@interface OrgBouncycastleAsn1DERExternal : OrgBouncycastleAsn1ASN1Primitive {
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)vector;

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)directReference
                             withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)indirectReference
                           withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)dataValueDescriptor
                         withOrgBouncycastleAsn1DERTaggedObject:(OrgBouncycastleAsn1DERTaggedObject *)externalData;

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)directReference
                             withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)indirectReference
                           withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)dataValueDescriptor
                                                        withInt:(jint)encoding
                           withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)externalData;

- (NSUInteger)hash;

- (jboolean)isConstructed;

- (jint)encodedLength;

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg;

- (jboolean)asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)o;

- (OrgBouncycastleAsn1ASN1Primitive *)getDataValueDescriptor;

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getDirectReference;

- (jint)getEncoding;

- (OrgBouncycastleAsn1ASN1Primitive *)getExternalContent;

- (OrgBouncycastleAsn1ASN1Integer *)getIndirectReference;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1DERExternal)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1DERExternal)

#endif // _OrgBouncycastleAsn1DERExternal_H_
