//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ASN1TaggedObjectParser.java
//

#ifndef _OrgBouncycastleAsn1ASN1TaggedObjectParser_H_
#define _OrgBouncycastleAsn1ASN1TaggedObjectParser_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/InMemoryRepresentable.h"

@protocol OrgBouncycastleAsn1ASN1TaggedObjectParser < OrgBouncycastleAsn1ASN1Encodable, OrgBouncycastleAsn1InMemoryRepresentable, NSObject, JavaObject >
- (jint)getTagNo;

- (id<OrgBouncycastleAsn1ASN1Encodable>)getObjectParserWithInt:(jint)tag
                                                   withBoolean:(jboolean)isExplicit;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1ASN1TaggedObjectParser)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1ASN1TaggedObjectParser)

#endif // _OrgBouncycastleAsn1ASN1TaggedObjectParser_H_
