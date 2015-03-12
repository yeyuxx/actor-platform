//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/IssuerSerial.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERBitString.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/x500/X500Name.h"
#include "org/bouncycastle/asn1/x509/GeneralName.h"
#include "org/bouncycastle/asn1/x509/GeneralNames.h"
#include "org/bouncycastle/asn1/x509/IssuerSerial.h"

@interface OrgBouncycastleAsn1X509IssuerSerial ()
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

@implementation OrgBouncycastleAsn1X509IssuerSerial

+ (OrgBouncycastleAsn1X509IssuerSerial *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X509IssuerSerial_getInstanceWithId_(obj);
}

+ (OrgBouncycastleAsn1X509IssuerSerial *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1X509IssuerSerial_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    if ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size] != 2 && [seq size] != 3) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"Bad sequence size: ", [seq size])];
    }
    issuer_ = OrgBouncycastleAsn1X509GeneralNames_getInstanceWithId_([seq getObjectAtWithInt:0]);
    serial_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([seq getObjectAtWithInt:1]);
    if ([seq size] == 3) {
      issuerUID_ = OrgBouncycastleAsn1DERBitString_getInstanceWithId_([seq getObjectAtWithInt:2]);
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1X500X500Name:(OrgBouncycastleAsn1X500X500Name *)issuer
                                 withJavaMathBigInteger:(JavaMathBigInteger *)serial {
  return [self initOrgBouncycastleAsn1X509IssuerSerialWithOrgBouncycastleAsn1X509GeneralNames:[[OrgBouncycastleAsn1X509GeneralNames alloc] initWithOrgBouncycastleAsn1X509GeneralName:[[OrgBouncycastleAsn1X509GeneralName alloc] initWithOrgBouncycastleAsn1X500X500Name:issuer]] withOrgBouncycastleAsn1ASN1Integer:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:serial]];
}

- (instancetype)initWithOrgBouncycastleAsn1X509GeneralNames:(OrgBouncycastleAsn1X509GeneralNames *)issuer
                                     withJavaMathBigInteger:(JavaMathBigInteger *)serial {
  return [self initOrgBouncycastleAsn1X509IssuerSerialWithOrgBouncycastleAsn1X509GeneralNames:issuer withOrgBouncycastleAsn1ASN1Integer:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:serial]];
}

- (instancetype)initOrgBouncycastleAsn1X509IssuerSerialWithOrgBouncycastleAsn1X509GeneralNames:(OrgBouncycastleAsn1X509GeneralNames *)issuer
                                                            withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)serial {
  if (self = [super init]) {
    self->issuer_ = issuer;
    self->serial_ = serial;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1X509GeneralNames:(OrgBouncycastleAsn1X509GeneralNames *)issuer
                         withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)serial {
  return [self initOrgBouncycastleAsn1X509IssuerSerialWithOrgBouncycastleAsn1X509GeneralNames:issuer withOrgBouncycastleAsn1ASN1Integer:serial];
}

- (OrgBouncycastleAsn1X509GeneralNames *)getIssuer {
  return issuer_;
}

- (OrgBouncycastleAsn1ASN1Integer *)getSerial {
  return serial_;
}

- (OrgBouncycastleAsn1DERBitString *)getIssuerUID {
  return issuerUID_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:issuer_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:serial_];
  if (issuerUID_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:issuerUID_];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509IssuerSerial *)other {
  [super copyAllFieldsTo:other];
  other->issuer_ = issuer_;
  other->serial_ = serial_;
  other->issuerUID_ = issuerUID_;
}

@end

OrgBouncycastleAsn1X509IssuerSerial *OrgBouncycastleAsn1X509IssuerSerial_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X509IssuerSerial_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1X509IssuerSerial class]]) {
    return (OrgBouncycastleAsn1X509IssuerSerial *) check_class_cast(obj, [OrgBouncycastleAsn1X509IssuerSerial class]);
  }
  if (obj != nil) {
    return [[OrgBouncycastleAsn1X509IssuerSerial alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

OrgBouncycastleAsn1X509IssuerSerial *OrgBouncycastleAsn1X509IssuerSerial_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1X509IssuerSerial_init();
  return OrgBouncycastleAsn1X509IssuerSerial_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509IssuerSerial)
