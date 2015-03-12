//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/CertificateList.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERBitString.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/x500/X500Name.h"
#include "org/bouncycastle/asn1/x509/AlgorithmIdentifier.h"
#include "org/bouncycastle/asn1/x509/CertificateList.h"
#include "org/bouncycastle/asn1/x509/TBSCertList.h"
#include "org/bouncycastle/asn1/x509/Time.h"

@implementation OrgBouncycastleAsn1X509CertificateList

+ (OrgBouncycastleAsn1X509CertificateList *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                   withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1X509CertificateList_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

+ (OrgBouncycastleAsn1X509CertificateList *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X509CertificateList_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    isHashCodeSet_ = NO;
    if ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size] == 3) {
      tbsCertList_ = OrgBouncycastleAsn1X509TBSCertList_getInstanceWithId_([seq getObjectAtWithInt:0]);
      sigAlgId_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithId_([seq getObjectAtWithInt:1]);
      sig_ = OrgBouncycastleAsn1DERBitString_getInstanceWithId_([seq getObjectAtWithInt:2]);
    }
    else {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"sequence wrong size for CertificateList"];
    }
  }
  return self;
}

- (OrgBouncycastleAsn1X509TBSCertList *)getTBSCertList {
  return tbsCertList_;
}

- (IOSObjectArray *)getRevokedCertificates {
  return [((OrgBouncycastleAsn1X509TBSCertList *) nil_chk(tbsCertList_)) getRevokedCertificates];
}

- (id<JavaUtilEnumeration>)getRevokedCertificateEnumeration {
  return [((OrgBouncycastleAsn1X509TBSCertList *) nil_chk(tbsCertList_)) getRevokedCertificateEnumeration];
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getSignatureAlgorithm {
  return sigAlgId_;
}

- (OrgBouncycastleAsn1DERBitString *)getSignature {
  return sig_;
}

- (jint)getVersionNumber {
  return [((OrgBouncycastleAsn1X509TBSCertList *) nil_chk(tbsCertList_)) getVersionNumber];
}

- (OrgBouncycastleAsn1X500X500Name *)getIssuer {
  return [((OrgBouncycastleAsn1X509TBSCertList *) nil_chk(tbsCertList_)) getIssuer];
}

- (OrgBouncycastleAsn1X509Time *)getThisUpdate {
  return [((OrgBouncycastleAsn1X509TBSCertList *) nil_chk(tbsCertList_)) getThisUpdate];
}

- (OrgBouncycastleAsn1X509Time *)getNextUpdate {
  return [((OrgBouncycastleAsn1X509TBSCertList *) nil_chk(tbsCertList_)) getNextUpdate];
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:tbsCertList_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:sigAlgId_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:sig_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (NSUInteger)hash {
  if (!isHashCodeSet_) {
    hashCodeValue_ = [super hash];
    isHashCodeSet_ = YES;
  }
  return hashCodeValue_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509CertificateList *)other {
  [super copyAllFieldsTo:other];
  other->tbsCertList_ = tbsCertList_;
  other->sigAlgId_ = sigAlgId_;
  other->sig_ = sig_;
  other->isHashCodeSet_ = isHashCodeSet_;
  other->hashCodeValue_ = hashCodeValue_;
}

@end

OrgBouncycastleAsn1X509CertificateList *OrgBouncycastleAsn1X509CertificateList_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1X509CertificateList_init();
  return OrgBouncycastleAsn1X509CertificateList_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

OrgBouncycastleAsn1X509CertificateList *OrgBouncycastleAsn1X509CertificateList_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X509CertificateList_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1X509CertificateList class]]) {
    return (OrgBouncycastleAsn1X509CertificateList *) check_class_cast(obj, [OrgBouncycastleAsn1X509CertificateList class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1X509CertificateList alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509CertificateList)
