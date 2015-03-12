//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/asn1/ASN1BitString.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/asn1/ASN1BitString.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "java/io/IOException.h"

@interface ImActorModelCryptoAsn1ASN1BitString () {
 @public
  jint paddingBit_;
  IOSByteArray *content_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelCryptoAsn1ASN1BitString, content_, IOSByteArray *)

@implementation ImActorModelCryptoAsn1ASN1BitString

+ (ImActorModelCryptoAsn1ASN1BitString *)readBitStringWithBSDataInput:(BSDataInput *)dataInput {
  return ImActorModelCryptoAsn1ASN1BitString_readBitStringWithBSDataInput_(dataInput);
}

- (instancetype)initWithInt:(jint)paddingBit
              withByteArray:(IOSByteArray *)content {
  if (self = [super init]) {
    self->paddingBit_ = paddingBit;
    self->content_ = content;
  }
  return self;
}

- (jint)getPaddingBit {
  return paddingBit_;
}

- (IOSByteArray *)getContent {
  return content_;
}

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput {
  [((BSDataOutput *) nil_chk(dataOutput)) writeByteWithInt:ImActorModelCryptoAsn1ASN1Primitive_TAG_BIT_STRING];
  [dataOutput writeASN1LengthWithInt:((IOSByteArray *) nil_chk(content_))->size_ + 1];
  [dataOutput writeByteWithInt:paddingBit_];
  [dataOutput writeBytesWithByteArray:content_ withInt:0 withInt:content_->size_];
}

- (void)copyAllFieldsTo:(ImActorModelCryptoAsn1ASN1BitString *)other {
  [super copyAllFieldsTo:other];
  other->paddingBit_ = paddingBit_;
  other->content_ = content_;
}

@end

ImActorModelCryptoAsn1ASN1BitString *ImActorModelCryptoAsn1ASN1BitString_readBitStringWithBSDataInput_(BSDataInput *dataInput) {
  ImActorModelCryptoAsn1ASN1BitString_init();
  jint paddingBytes = [((BSDataInput *) nil_chk(dataInput)) readByte];
  return [[ImActorModelCryptoAsn1ASN1BitString alloc] initWithInt:paddingBytes withByteArray:[dataInput readBytesWithInt:[dataInput getRemaining]]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelCryptoAsn1ASN1BitString)
