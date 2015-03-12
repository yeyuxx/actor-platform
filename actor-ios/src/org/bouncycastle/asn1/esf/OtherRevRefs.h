//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/esf/OtherRevRefs.java
//

#ifndef _OrgBouncycastleAsn1EsfOtherRevRefs_H_
#define _OrgBouncycastleAsn1EsfOtherRevRefs_H_

@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@protocol OrgBouncycastleAsn1ASN1Encodable;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1EsfOtherRevRefs : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1EsfOtherRevRefs *)getInstanceWithId:(id)obj;

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)otherRevRefType
                           withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)otherRevRefs;

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getOtherRevRefType;

- (id<OrgBouncycastleAsn1ASN1Encodable>)getOtherRevRefs;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1EsfOtherRevRefs)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1EsfOtherRevRefs *OrgBouncycastleAsn1EsfOtherRevRefs_getInstanceWithId_(id obj);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1EsfOtherRevRefs)

#endif // _OrgBouncycastleAsn1EsfOtherRevRefs_H_
