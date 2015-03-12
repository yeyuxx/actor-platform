//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/X509Extension.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Boolean.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/x509/X509Extension.h"

BOOL OrgBouncycastleAsn1X509X509Extension_initialized = NO;

@implementation OrgBouncycastleAsn1X509X509Extension

OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_subjectDirectoryAttributes_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_subjectKeyIdentifier_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_keyUsage_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_privateKeyUsagePeriod_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_subjectAlternativeName_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_issuerAlternativeName_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_basicConstraints_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_cRLNumber_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_reasonCode_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_instructionCode_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_invalidityDate_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_deltaCRLIndicator_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_issuingDistributionPoint_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_certificateIssuer_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_nameConstraints_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_cRLDistributionPoints_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_certificatePolicies_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_policyMappings_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_authorityKeyIdentifier_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_policyConstraints_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_extendedKeyUsage_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_freshestCRL_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_inhibitAnyPolicy_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_authorityInfoAccess_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_subjectInfoAccess_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_logoType_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_biometricInfo_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_qCStatements_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_auditIdentity_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_noRevAvail_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1X509X509Extension_targetInformation_;

- (instancetype)initWithOrgBouncycastleAsn1ASN1Boolean:(OrgBouncycastleAsn1ASN1Boolean *)critical
                withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)value {
  if (self = [super init]) {
    self->critical_ = [((OrgBouncycastleAsn1ASN1Boolean *) nil_chk(critical)) isTrue];
    self->value_ = value;
  }
  return self;
}

- (instancetype)initWithBoolean:(jboolean)critical
withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)value {
  if (self = [super init]) {
    self->critical_ = critical;
    self->value_ = value;
  }
  return self;
}

- (jboolean)isCritical {
  return critical_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getValue {
  return value_;
}

- (id<OrgBouncycastleAsn1ASN1Encodable>)getParsedValue {
  return OrgBouncycastleAsn1X509X509Extension_convertValueToObjectWithOrgBouncycastleAsn1X509X509Extension_(self);
}

- (NSUInteger)hash {
  if ([self isCritical]) {
    return ((jint) [((OrgBouncycastleAsn1ASN1OctetString *) nil_chk([self getValue])) hash]);
  }
  return ~((jint) [((OrgBouncycastleAsn1ASN1OctetString *) nil_chk([self getValue])) hash]);
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgBouncycastleAsn1X509X509Extension class]])) {
    return NO;
  }
  OrgBouncycastleAsn1X509X509Extension *other = (OrgBouncycastleAsn1X509X509Extension *) check_class_cast(o, [OrgBouncycastleAsn1X509X509Extension class]);
  return [((OrgBouncycastleAsn1ASN1OctetString *) nil_chk([((OrgBouncycastleAsn1X509X509Extension *) nil_chk(other)) getValue])) isEqual:[self getValue]] && ([other isCritical] == [self isCritical]);
}

+ (OrgBouncycastleAsn1ASN1Primitive *)convertValueToObjectWithOrgBouncycastleAsn1X509X509Extension:(OrgBouncycastleAsn1X509X509Extension *)ext {
  return OrgBouncycastleAsn1X509X509Extension_convertValueToObjectWithOrgBouncycastleAsn1X509X509Extension_(ext);
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509X509Extension *)other {
  [super copyAllFieldsTo:other];
  other->critical_ = critical_;
  other->value_ = value_;
}

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1X509X509Extension class]) {
    OrgBouncycastleAsn1X509X509Extension_subjectDirectoryAttributes_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.9"];
    OrgBouncycastleAsn1X509X509Extension_subjectKeyIdentifier_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.14"];
    OrgBouncycastleAsn1X509X509Extension_keyUsage_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.15"];
    OrgBouncycastleAsn1X509X509Extension_privateKeyUsagePeriod_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.16"];
    OrgBouncycastleAsn1X509X509Extension_subjectAlternativeName_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.17"];
    OrgBouncycastleAsn1X509X509Extension_issuerAlternativeName_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.18"];
    OrgBouncycastleAsn1X509X509Extension_basicConstraints_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.19"];
    OrgBouncycastleAsn1X509X509Extension_cRLNumber_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.20"];
    OrgBouncycastleAsn1X509X509Extension_reasonCode_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.21"];
    OrgBouncycastleAsn1X509X509Extension_instructionCode_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.23"];
    OrgBouncycastleAsn1X509X509Extension_invalidityDate_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.24"];
    OrgBouncycastleAsn1X509X509Extension_deltaCRLIndicator_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.27"];
    OrgBouncycastleAsn1X509X509Extension_issuingDistributionPoint_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.28"];
    OrgBouncycastleAsn1X509X509Extension_certificateIssuer_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.29"];
    OrgBouncycastleAsn1X509X509Extension_nameConstraints_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.30"];
    OrgBouncycastleAsn1X509X509Extension_cRLDistributionPoints_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.31"];
    OrgBouncycastleAsn1X509X509Extension_certificatePolicies_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.32"];
    OrgBouncycastleAsn1X509X509Extension_policyMappings_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.33"];
    OrgBouncycastleAsn1X509X509Extension_authorityKeyIdentifier_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.35"];
    OrgBouncycastleAsn1X509X509Extension_policyConstraints_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.36"];
    OrgBouncycastleAsn1X509X509Extension_extendedKeyUsage_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.37"];
    OrgBouncycastleAsn1X509X509Extension_freshestCRL_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.46"];
    OrgBouncycastleAsn1X509X509Extension_inhibitAnyPolicy_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.54"];
    OrgBouncycastleAsn1X509X509Extension_authorityInfoAccess_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"1.3.6.1.5.5.7.1.1"];
    OrgBouncycastleAsn1X509X509Extension_subjectInfoAccess_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"1.3.6.1.5.5.7.1.11"];
    OrgBouncycastleAsn1X509X509Extension_logoType_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"1.3.6.1.5.5.7.1.12"];
    OrgBouncycastleAsn1X509X509Extension_biometricInfo_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"1.3.6.1.5.5.7.1.2"];
    OrgBouncycastleAsn1X509X509Extension_qCStatements_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"1.3.6.1.5.5.7.1.3"];
    OrgBouncycastleAsn1X509X509Extension_auditIdentity_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"1.3.6.1.5.5.7.1.4"];
    OrgBouncycastleAsn1X509X509Extension_noRevAvail_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.56"];
    OrgBouncycastleAsn1X509X509Extension_targetInformation_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"2.5.29.55"];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1X509X509Extension)
  }
}

@end

OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1X509X509Extension_convertValueToObjectWithOrgBouncycastleAsn1X509X509Extension_(OrgBouncycastleAsn1X509X509Extension *ext) {
  OrgBouncycastleAsn1X509X509Extension_init();
  @try {
    return OrgBouncycastleAsn1ASN1Primitive_fromByteArrayWithByteArray_([((OrgBouncycastleAsn1ASN1OctetString *) nil_chk([((OrgBouncycastleAsn1X509X509Extension *) nil_chk(ext)) getValue])) getOctets]);
  }
  @catch (JavaIoIOException *e) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$@", @"can't convert extension: ", e)];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509X509Extension)
