//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/ExtendedKeyUsage.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Enumeration.h"
#include "java/util/Hashtable.h"
#include "java/util/Vector.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/x509/ExtendedKeyUsage.h"
#include "org/bouncycastle/asn1/x509/Extension.h"
#include "org/bouncycastle/asn1/x509/Extensions.h"
#include "org/bouncycastle/asn1/x509/KeyPurposeId.h"

@interface OrgBouncycastleAsn1X509ExtendedKeyUsage ()
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

@implementation OrgBouncycastleAsn1X509ExtendedKeyUsage

+ (OrgBouncycastleAsn1X509ExtendedKeyUsage *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                    withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1X509ExtendedKeyUsage_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

+ (OrgBouncycastleAsn1X509ExtendedKeyUsage *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X509ExtendedKeyUsage_getInstanceWithId_(obj);
}

+ (OrgBouncycastleAsn1X509ExtendedKeyUsage *)fromExtensionsWithOrgBouncycastleAsn1X509Extensions:(OrgBouncycastleAsn1X509Extensions *)extensions {
  return OrgBouncycastleAsn1X509ExtendedKeyUsage_fromExtensionsWithOrgBouncycastleAsn1X509Extensions_(extensions);
}

- (instancetype)initWithOrgBouncycastleAsn1X509KeyPurposeId:(OrgBouncycastleAsn1X509KeyPurposeId *)usage {
  if (self = [super init]) {
    usageTable_ = [[JavaUtilHashtable alloc] init];
    self->seq_ = [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1Encodable:usage];
    (void) [self->usageTable_ putWithId:usage withId:usage];
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    usageTable_ = [[JavaUtilHashtable alloc] init];
    self->seq_ = seq;
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    while ([((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]) {
      id<OrgBouncycastleAsn1ASN1Encodable> o = (id<OrgBouncycastleAsn1ASN1Encodable>) check_protocol_cast([e nextElement], @protocol(OrgBouncycastleAsn1ASN1Encodable));
      if (!([[((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk(o)) toASN1Primitive] isKindOfClass:[OrgBouncycastleAsn1ASN1ObjectIdentifier class]])) {
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Only ASN1ObjectIdentifiers allowed in ExtendedKeyUsage."];
      }
      (void) [self->usageTable_ putWithId:o withId:o];
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1X509KeyPurposeIdArray:(IOSObjectArray *)usages {
  if (self = [super init]) {
    usageTable_ = [[JavaUtilHashtable alloc] init];
    OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
    for (jint i = 0; i != ((IOSObjectArray *) nil_chk(usages))->size_; i++) {
      [v addWithOrgBouncycastleAsn1ASN1Encodable:IOSObjectArray_Get(usages, i)];
      (void) [self->usageTable_ putWithId:IOSObjectArray_Get(usages, i) withId:IOSObjectArray_Get(usages, i)];
    }
    self->seq_ = [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
  }
  return self;
}

- (instancetype)initWithJavaUtilVector:(JavaUtilVector *)usages {
  if (self = [super init]) {
    usageTable_ = [[JavaUtilHashtable alloc] init];
    OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
    id<JavaUtilEnumeration> e = [((JavaUtilVector *) nil_chk(usages)) elements];
    while ([((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]) {
      OrgBouncycastleAsn1X509KeyPurposeId *o = OrgBouncycastleAsn1X509KeyPurposeId_getInstanceWithId_([e nextElement]);
      [v addWithOrgBouncycastleAsn1ASN1Encodable:o];
      (void) [self->usageTable_ putWithId:o withId:o];
    }
    self->seq_ = [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
  }
  return self;
}

- (jboolean)hasKeyPurposeIdWithOrgBouncycastleAsn1X509KeyPurposeId:(OrgBouncycastleAsn1X509KeyPurposeId *)keyPurposeId {
  return ([((JavaUtilHashtable *) nil_chk(usageTable_)) getWithId:keyPurposeId] != nil);
}

- (IOSObjectArray *)getUsages {
  IOSObjectArray *temp = [IOSObjectArray newArrayWithLength:[((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq_)) size] type:OrgBouncycastleAsn1X509KeyPurposeId_class_()];
  jint i = 0;
  for (id<JavaUtilEnumeration> it = [seq_ getObjects]; [((id<JavaUtilEnumeration>) nil_chk(it)) hasMoreElements]; ) {
    IOSObjectArray_Set(temp, i++, OrgBouncycastleAsn1X509KeyPurposeId_getInstanceWithId_([it nextElement]));
  }
  return temp;
}

- (jint)size {
  return [((JavaUtilHashtable *) nil_chk(usageTable_)) size];
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return seq_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509ExtendedKeyUsage *)other {
  [super copyAllFieldsTo:other];
  other->usageTable_ = usageTable_;
  other->seq_ = seq_;
}

@end

OrgBouncycastleAsn1X509ExtendedKeyUsage *OrgBouncycastleAsn1X509ExtendedKeyUsage_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1X509ExtendedKeyUsage_init();
  return OrgBouncycastleAsn1X509ExtendedKeyUsage_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

OrgBouncycastleAsn1X509ExtendedKeyUsage *OrgBouncycastleAsn1X509ExtendedKeyUsage_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X509ExtendedKeyUsage_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1X509ExtendedKeyUsage class]]) {
    return (OrgBouncycastleAsn1X509ExtendedKeyUsage *) check_class_cast(obj, [OrgBouncycastleAsn1X509ExtendedKeyUsage class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1X509ExtendedKeyUsage alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

OrgBouncycastleAsn1X509ExtendedKeyUsage *OrgBouncycastleAsn1X509ExtendedKeyUsage_fromExtensionsWithOrgBouncycastleAsn1X509Extensions_(OrgBouncycastleAsn1X509Extensions *extensions) {
  OrgBouncycastleAsn1X509ExtendedKeyUsage_init();
  return OrgBouncycastleAsn1X509ExtendedKeyUsage_getInstanceWithId_([((OrgBouncycastleAsn1X509Extensions *) nil_chk(extensions)) getExtensionParsedValueWithOrgBouncycastleAsn1ASN1ObjectIdentifier:OrgBouncycastleAsn1X509Extension_get_extendedKeyUsage_()]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509ExtendedKeyUsage)
