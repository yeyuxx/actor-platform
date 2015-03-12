//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ess/ContentHints.java
//

#ifndef _OrgBouncycastleAsn1EssContentHints_H_
#define _OrgBouncycastleAsn1EssContentHints_H_

@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1DERUTF8String;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1EssContentHints : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1EssContentHints *)getInstanceWithId:(id)o;

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)contentType;

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)contentType
                           withOrgBouncycastleAsn1DERUTF8String:(OrgBouncycastleAsn1DERUTF8String *)contentDescription;

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getContentType;

- (OrgBouncycastleAsn1DERUTF8String *)getContentDescription;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1EssContentHints)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1EssContentHints *OrgBouncycastleAsn1EssContentHints_getInstanceWithId_(id o);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1EssContentHints)

#endif // _OrgBouncycastleAsn1EssContentHints_H_
