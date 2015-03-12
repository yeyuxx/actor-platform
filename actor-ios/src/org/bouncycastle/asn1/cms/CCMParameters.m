//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/CCMParameters.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DEROctetString.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/cms/CCMParameters.h"
#include "org/bouncycastle/util/Arrays.h"

@interface OrgBouncycastleAsn1CmsCCMParameters () {
 @public
  IOSByteArray *nonce_;
  jint icvLen_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsCCMParameters, nonce_, IOSByteArray *)

@implementation OrgBouncycastleAsn1CmsCCMParameters

+ (OrgBouncycastleAsn1CmsCCMParameters *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1CmsCCMParameters_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    self->nonce_ = [((OrgBouncycastleAsn1ASN1OctetString *) nil_chk(OrgBouncycastleAsn1ASN1OctetString_getInstanceWithId_([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0]))) getOctets];
    if ([seq size] == 2) {
      self->icvLen_ = [((JavaMathBigInteger *) nil_chk([((OrgBouncycastleAsn1ASN1Integer *) nil_chk(OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([seq getObjectAtWithInt:1]))) getValue])) intValue];
    }
    else {
      self->icvLen_ = 12;
    }
  }
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)nonce
                          withInt:(jint)icvLen {
  if (self = [super init]) {
    self->nonce_ = OrgBouncycastleUtilArrays_cloneWithByteArray_(nonce);
    self->icvLen_ = icvLen;
  }
  return self;
}

- (IOSByteArray *)getNonce {
  return OrgBouncycastleUtilArrays_cloneWithByteArray_(nonce_);
}

- (jint)getIcvLen {
  return icvLen_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DEROctetString alloc] initWithByteArray:nonce_]];
  if (icvLen_ != 12) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:icvLen_]];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmsCCMParameters *)other {
  [super copyAllFieldsTo:other];
  other->nonce_ = nonce_;
  other->icvLen_ = icvLen_;
}

@end

OrgBouncycastleAsn1CmsCCMParameters *OrgBouncycastleAsn1CmsCCMParameters_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1CmsCCMParameters_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1CmsCCMParameters class]]) {
    return (OrgBouncycastleAsn1CmsCCMParameters *) check_class_cast(obj, [OrgBouncycastleAsn1CmsCCMParameters class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1CmsCCMParameters alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmsCCMParameters)
