//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/BERFactory.java
//

#ifndef _OrgBouncycastleAsn1BERFactory_H_
#define _OrgBouncycastleAsn1BERFactory_H_

@class OrgBouncycastleAsn1ASN1EncodableVector;
@class OrgBouncycastleAsn1BERSequence;
@class OrgBouncycastleAsn1BERSet;

#include "J2ObjC_header.h"

@interface OrgBouncycastleAsn1BERFactory : NSObject {
}

+ (OrgBouncycastleAsn1BERSequence *)createSequenceWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v;

+ (OrgBouncycastleAsn1BERSet *)createSetWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleAsn1BERFactory_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleAsn1BERFactory)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1BERSequence *OrgBouncycastleAsn1BERFactory_createSequenceWithOrgBouncycastleAsn1ASN1EncodableVector_(OrgBouncycastleAsn1ASN1EncodableVector *v);

FOUNDATION_EXPORT OrgBouncycastleAsn1BERSet *OrgBouncycastleAsn1BERFactory_createSetWithOrgBouncycastleAsn1ASN1EncodableVector_(OrgBouncycastleAsn1ASN1EncodableVector *v);

FOUNDATION_EXPORT OrgBouncycastleAsn1BERSequence *OrgBouncycastleAsn1BERFactory_EMPTY_SEQUENCE_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1BERFactory, EMPTY_SEQUENCE_, OrgBouncycastleAsn1BERSequence *)

FOUNDATION_EXPORT OrgBouncycastleAsn1BERSet *OrgBouncycastleAsn1BERFactory_EMPTY_SET_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1BERFactory, EMPTY_SET_, OrgBouncycastleAsn1BERSet *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1BERFactory)

#endif // _OrgBouncycastleAsn1BERFactory_H_
