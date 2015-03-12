//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/DERTaggedObject.java
//

#ifndef _OrgBouncycastleAsn1DERTaggedObject_H_
#define _OrgBouncycastleAsn1DERTaggedObject_H_

@class IOSByteArray;
@class OrgBouncycastleAsn1ASN1OutputStream;
@protocol OrgBouncycastleAsn1ASN1Encodable;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"

@interface OrgBouncycastleAsn1DERTaggedObject : OrgBouncycastleAsn1ASN1TaggedObject {
}

- (instancetype)initWithBoolean:(jboolean)explicit_
                        withInt:(jint)tagNo
withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)obj;

- (instancetype)initWithInt:(jint)tagNo
withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)encodable;

- (jboolean)isConstructed;

- (jint)encodedLength;

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleAsn1DERTaggedObject_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleAsn1DERTaggedObject)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleAsn1DERTaggedObject_ZERO_BYTES_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1DERTaggedObject, ZERO_BYTES_, IOSByteArray *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1DERTaggedObject)

#endif // _OrgBouncycastleAsn1DERTaggedObject_H_
