//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cmp/CertOrEncCert.java
//

#ifndef _OrgBouncycastleAsn1CmpCertOrEncCert_H_
#define _OrgBouncycastleAsn1CmpCertOrEncCert_H_

@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1TaggedObject;
@class OrgBouncycastleAsn1CmpCMPCertificate;
@class OrgBouncycastleAsn1CrmfEncryptedValue;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Choice.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CmpCertOrEncCert : OrgBouncycastleAsn1ASN1Object < OrgBouncycastleAsn1ASN1Choice > {
}

+ (OrgBouncycastleAsn1CmpCertOrEncCert *)getInstanceWithId:(id)o;

- (instancetype)initWithOrgBouncycastleAsn1CmpCMPCertificate:(OrgBouncycastleAsn1CmpCMPCertificate *)certificate;

- (instancetype)initWithOrgBouncycastleAsn1CrmfEncryptedValue:(OrgBouncycastleAsn1CrmfEncryptedValue *)encryptedCert;

- (OrgBouncycastleAsn1CmpCMPCertificate *)getCertificate;

- (OrgBouncycastleAsn1CrmfEncryptedValue *)getEncryptedCert;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CmpCertOrEncCert)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CmpCertOrEncCert *OrgBouncycastleAsn1CmpCertOrEncCert_getInstanceWithId_(id o);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmpCertOrEncCert)

#endif // _OrgBouncycastleAsn1CmpCertOrEncCert_H_
