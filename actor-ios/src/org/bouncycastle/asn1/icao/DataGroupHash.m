//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/icao/DataGroupHash.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/icao/DataGroupHash.h"

@interface OrgBouncycastleAsn1IcaoDataGroupHash ()
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

@implementation OrgBouncycastleAsn1IcaoDataGroupHash

+ (OrgBouncycastleAsn1IcaoDataGroupHash *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1IcaoDataGroupHash_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    dataGroupNumber_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([((id<JavaUtilEnumeration>) nil_chk(e)) nextElement]);
    dataGroupHashValue_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithId_([e nextElement]);
  }
  return self;
}

- (instancetype)initWithInt:(jint)dataGroupNumber
withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)dataGroupHashValue {
  if (self = [super init]) {
    self->dataGroupNumber_ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:dataGroupNumber];
    self->dataGroupHashValue_ = dataGroupHashValue;
  }
  return self;
}

- (jint)getDataGroupNumber {
  return [((JavaMathBigInteger *) nil_chk([((OrgBouncycastleAsn1ASN1Integer *) nil_chk(dataGroupNumber_)) getValue])) intValue];
}

- (OrgBouncycastleAsn1ASN1OctetString *)getDataGroupHashValue {
  return dataGroupHashValue_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *seq = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [seq addWithOrgBouncycastleAsn1ASN1Encodable:dataGroupNumber_];
  [seq addWithOrgBouncycastleAsn1ASN1Encodable:dataGroupHashValue_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:seq];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1IcaoDataGroupHash *)other {
  [super copyAllFieldsTo:other];
  other->dataGroupNumber_ = dataGroupNumber_;
  other->dataGroupHashValue_ = dataGroupHashValue_;
}

@end

OrgBouncycastleAsn1IcaoDataGroupHash *OrgBouncycastleAsn1IcaoDataGroupHash_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1IcaoDataGroupHash_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1IcaoDataGroupHash class]]) {
    return (OrgBouncycastleAsn1IcaoDataGroupHash *) check_class_cast(obj, [OrgBouncycastleAsn1IcaoDataGroupHash class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1IcaoDataGroupHash alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1IcaoDataGroupHash)
