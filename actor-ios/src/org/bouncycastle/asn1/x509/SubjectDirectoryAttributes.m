//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/SubjectDirectoryAttributes.java
//

#include "J2ObjC_source.h"
#include "java/util/Enumeration.h"
#include "java/util/Vector.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/x509/Attribute.h"
#include "org/bouncycastle/asn1/x509/SubjectDirectoryAttributes.h"

@interface OrgBouncycastleAsn1X509SubjectDirectoryAttributes () {
 @public
  JavaUtilVector *attributes_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509SubjectDirectoryAttributes, attributes_, JavaUtilVector *)

@implementation OrgBouncycastleAsn1X509SubjectDirectoryAttributes

+ (OrgBouncycastleAsn1X509SubjectDirectoryAttributes *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X509SubjectDirectoryAttributes_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    attributes_ = [[JavaUtilVector alloc] init];
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    while ([((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]) {
      OrgBouncycastleAsn1ASN1Sequence *s = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_([e nextElement]);
      [attributes_ addElementWithId:OrgBouncycastleAsn1X509Attribute_getInstanceWithId_(s)];
    }
  }
  return self;
}

- (instancetype)initWithJavaUtilVector:(JavaUtilVector *)attributes {
  if (self = [super init]) {
    attributes_ = [[JavaUtilVector alloc] init];
    id<JavaUtilEnumeration> e = [((JavaUtilVector *) nil_chk(attributes)) elements];
    while ([((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]) {
      [self->attributes_ addElementWithId:[e nextElement]];
    }
  }
  return self;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *vec = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  id<JavaUtilEnumeration> e = [((JavaUtilVector *) nil_chk(attributes_)) elements];
  while ([((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]) {
    [vec addWithOrgBouncycastleAsn1ASN1Encodable:(OrgBouncycastleAsn1X509Attribute *) check_class_cast([e nextElement], [OrgBouncycastleAsn1X509Attribute class])];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:vec];
}

- (JavaUtilVector *)getAttributes {
  return attributes_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509SubjectDirectoryAttributes *)other {
  [super copyAllFieldsTo:other];
  other->attributes_ = attributes_;
}

@end

OrgBouncycastleAsn1X509SubjectDirectoryAttributes *OrgBouncycastleAsn1X509SubjectDirectoryAttributes_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X509SubjectDirectoryAttributes_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1X509SubjectDirectoryAttributes class]]) {
    return (OrgBouncycastleAsn1X509SubjectDirectoryAttributes *) check_class_cast(obj, [OrgBouncycastleAsn1X509SubjectDirectoryAttributes class]);
  }
  if (obj != nil) {
    return [[OrgBouncycastleAsn1X509SubjectDirectoryAttributes alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509SubjectDirectoryAttributes)
