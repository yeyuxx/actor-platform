//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ASN1Primitive.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/ClassCastException.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1InputStream.h"
#include "org/bouncycastle/asn1/ASN1OutputStream.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation OrgBouncycastleAsn1ASN1Primitive

- (instancetype)init {
  return [super init];
}

+ (OrgBouncycastleAsn1ASN1Primitive *)fromByteArrayWithByteArray:(IOSByteArray *)data {
  return OrgBouncycastleAsn1ASN1Primitive_fromByteArrayWithByteArray_(data);
}

- (jboolean)isEqual:(id)o {
  if (self == o) {
    return YES;
  }
  return ([OrgBouncycastleAsn1ASN1Encodable_class_() isInstance:o]) && [self asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:[((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk(((id<OrgBouncycastleAsn1ASN1Encodable>) check_protocol_cast(o, @protocol(OrgBouncycastleAsn1ASN1Encodable))))) toASN1Primitive]];
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return self;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toDERObject {
  return self;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toDLObject {
  return self;
}

@end

OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1ASN1Primitive_fromByteArrayWithByteArray_(IOSByteArray *data) {
  OrgBouncycastleAsn1ASN1Primitive_init();
  OrgBouncycastleAsn1ASN1InputStream *aIn = [[OrgBouncycastleAsn1ASN1InputStream alloc] initWithByteArray:data];
  @try {
    return [aIn readObject];
  }
  @catch (JavaLangClassCastException *e) {
    @throw [[JavaIoIOException alloc] initWithNSString:@"cannot recognise object in stream"];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1ASN1Primitive)
