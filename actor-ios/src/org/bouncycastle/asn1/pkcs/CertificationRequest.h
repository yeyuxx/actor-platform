//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/pkcs/CertificationRequest.java
//

#ifndef _OrgBouncycastleAsn1PkcsCertificationRequest_H_
#define _OrgBouncycastleAsn1PkcsCertificationRequest_H_

@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1DERBitString;
@class OrgBouncycastleAsn1PkcsCertificationRequestInfo;
@class OrgBouncycastleAsn1X509AlgorithmIdentifier;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1PkcsCertificationRequest : OrgBouncycastleAsn1ASN1Object {
 @public
  OrgBouncycastleAsn1PkcsCertificationRequestInfo *reqInfo_;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *sigAlgId_;
  OrgBouncycastleAsn1DERBitString *sigBits_;
}

+ (OrgBouncycastleAsn1PkcsCertificationRequest *)getInstanceWithId:(id)o;

- (instancetype)init;

- (instancetype)initWithOrgBouncycastleAsn1PkcsCertificationRequestInfo:(OrgBouncycastleAsn1PkcsCertificationRequestInfo *)requestInfo
                         withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)algorithm
                                    withOrgBouncycastleAsn1DERBitString:(OrgBouncycastleAsn1DERBitString *)signature;

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;

- (OrgBouncycastleAsn1PkcsCertificationRequestInfo *)getCertificationRequestInfo;

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getSignatureAlgorithm;

- (OrgBouncycastleAsn1DERBitString *)getSignature;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1PkcsCertificationRequest)

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsCertificationRequest, reqInfo_, OrgBouncycastleAsn1PkcsCertificationRequestInfo *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsCertificationRequest, sigAlgId_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsCertificationRequest, sigBits_, OrgBouncycastleAsn1DERBitString *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1PkcsCertificationRequest *OrgBouncycastleAsn1PkcsCertificationRequest_getInstanceWithId_(id o);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1PkcsCertificationRequest)

#endif // _OrgBouncycastleAsn1PkcsCertificationRequest_H_
