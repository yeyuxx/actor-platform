//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/ContentInfo.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/BERSequence.h"
#include "org/bouncycastle/asn1/BERTaggedObject.h"
#include "org/bouncycastle/asn1/cms/ContentInfo.h"

@interface OrgBouncycastleAsn1CmsContentInfo () {
 @public
  OrgBouncycastleAsn1ASN1ObjectIdentifier *contentType_;
  id<OrgBouncycastleAsn1ASN1Encodable> content_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsContentInfo, contentType_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsContentInfo, content_, id<OrgBouncycastleAsn1ASN1Encodable>)

@implementation OrgBouncycastleAsn1CmsContentInfo

+ (OrgBouncycastleAsn1CmsContentInfo *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1CmsContentInfo_getInstanceWithId_(obj);
}

+ (OrgBouncycastleAsn1CmsContentInfo *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                              withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1CmsContentInfo_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    if ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size] < 1 || [seq size] > 2) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"Bad sequence size: ", [seq size])];
    }
    contentType_ = (OrgBouncycastleAsn1ASN1ObjectIdentifier *) check_class_cast([seq getObjectAtWithInt:0], [OrgBouncycastleAsn1ASN1ObjectIdentifier class]);
    if ([seq size] > 1) {
      OrgBouncycastleAsn1ASN1TaggedObject *tagged = (OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([seq getObjectAtWithInt:1], [OrgBouncycastleAsn1ASN1TaggedObject class]);
      if (![((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(tagged)) isExplicit] || [tagged getTagNo] != 0) {
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Bad tag for 'content'"];
      }
      content_ = [tagged getObject];
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)contentType
                           withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)content {
  if (self = [super init]) {
    self->contentType_ = contentType;
    self->content_ = content;
  }
  return self;
}

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getContentType {
  return contentType_;
}

- (id<OrgBouncycastleAsn1ASN1Encodable>)getContent {
  return content_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:contentType_];
  if (content_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1BERTaggedObject alloc] initWithInt:0 withOrgBouncycastleAsn1ASN1Encodable:content_]];
  }
  return [[OrgBouncycastleAsn1BERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmsContentInfo *)other {
  [super copyAllFieldsTo:other];
  other->contentType_ = contentType_;
  other->content_ = content_;
}

@end

OrgBouncycastleAsn1CmsContentInfo *OrgBouncycastleAsn1CmsContentInfo_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1CmsContentInfo_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1CmsContentInfo class]]) {
    return (OrgBouncycastleAsn1CmsContentInfo *) check_class_cast(obj, [OrgBouncycastleAsn1CmsContentInfo class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1CmsContentInfo alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

OrgBouncycastleAsn1CmsContentInfo *OrgBouncycastleAsn1CmsContentInfo_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1CmsContentInfo_init();
  return OrgBouncycastleAsn1CmsContentInfo_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmsContentInfo)
