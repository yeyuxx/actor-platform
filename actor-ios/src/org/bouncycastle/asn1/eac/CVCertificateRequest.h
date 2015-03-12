//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/eac/CVCertificateRequest.java
//

#ifndef _OrgBouncycastleAsn1EacCVCertificateRequest_H_
#define _OrgBouncycastleAsn1EacCVCertificateRequest_H_

@class IOSByteArray;
@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1DERApplicationSpecific;
@class OrgBouncycastleAsn1EacCertificateBody;
@class OrgBouncycastleAsn1EacPublicKeyDataObject;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1EacCVCertificateRequest : OrgBouncycastleAsn1ASN1Object {
 @public
  OrgBouncycastleAsn1ASN1ObjectIdentifier *signOid_;
  OrgBouncycastleAsn1ASN1ObjectIdentifier *keyOid_;
  NSString *strCertificateHolderReference_;
  IOSByteArray *encodedAuthorityReference_;
  jint ProfileId_;
  IOSByteArray *certificate_;
  NSString *overSignerReference_;
  IOSByteArray *encoded_;
  OrgBouncycastleAsn1EacPublicKeyDataObject *iso7816PubKey_;
}

+ (OrgBouncycastleAsn1EacCVCertificateRequest *)getInstanceWithId:(id)obj;

- (OrgBouncycastleAsn1EacCertificateBody *)getCertificateBody;

- (OrgBouncycastleAsn1EacPublicKeyDataObject *)getPublicKey;

- (IOSByteArray *)getInnerSignature;

- (IOSByteArray *)getOuterSignature;

- (jboolean)hasOuterSignature;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleAsn1EacCVCertificateRequest_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleAsn1EacCVCertificateRequest)

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EacCVCertificateRequest, signOid_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EacCVCertificateRequest, keyOid_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EacCVCertificateRequest, strCertificateHolderReference_, NSString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EacCVCertificateRequest, encodedAuthorityReference_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EacCVCertificateRequest, certificate_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EacCVCertificateRequest, overSignerReference_, NSString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EacCVCertificateRequest, encoded_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EacCVCertificateRequest, iso7816PubKey_, OrgBouncycastleAsn1EacPublicKeyDataObject *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1EacCVCertificateRequest *OrgBouncycastleAsn1EacCVCertificateRequest_getInstanceWithId_(id obj);

FOUNDATION_EXPORT jint OrgBouncycastleAsn1EacCVCertificateRequest_bodyValid_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1EacCVCertificateRequest, bodyValid_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgBouncycastleAsn1EacCVCertificateRequest, bodyValid_, jint)

FOUNDATION_EXPORT jint OrgBouncycastleAsn1EacCVCertificateRequest_signValid_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1EacCVCertificateRequest, signValid_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgBouncycastleAsn1EacCVCertificateRequest, signValid_, jint)

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleAsn1EacCVCertificateRequest_ZeroArray_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1EacCVCertificateRequest, ZeroArray_, IOSByteArray *)
J2OBJC_STATIC_FIELD_SETTER(OrgBouncycastleAsn1EacCVCertificateRequest, ZeroArray_, IOSByteArray *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1EacCVCertificateRequest)

#endif // _OrgBouncycastleAsn1EacCVCertificateRequest_H_
