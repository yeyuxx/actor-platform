//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/crmf/CertReqMessages.java
//

#ifndef _OrgBouncycastleAsn1CrmfCertReqMessages_H_
#define _OrgBouncycastleAsn1CrmfCertReqMessages_H_

@class IOSObjectArray;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1CrmfCertReqMsg;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CrmfCertReqMessages : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1CrmfCertReqMessages *)getInstanceWithId:(id)o;

- (instancetype)initWithOrgBouncycastleAsn1CrmfCertReqMsg:(OrgBouncycastleAsn1CrmfCertReqMsg *)msg;

- (instancetype)initWithOrgBouncycastleAsn1CrmfCertReqMsgArray:(IOSObjectArray *)msgs;

- (IOSObjectArray *)toCertReqMsgArray;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CrmfCertReqMessages)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CrmfCertReqMessages *OrgBouncycastleAsn1CrmfCertReqMessages_getInstanceWithId_(id o);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CrmfCertReqMessages)

#endif // _OrgBouncycastleAsn1CrmfCertReqMessages_H_
