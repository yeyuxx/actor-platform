//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ASN1Generator.java
//

#ifndef _OrgBouncycastleAsn1ASN1Generator_H_
#define _OrgBouncycastleAsn1ASN1Generator_H_

@class JavaIoOutputStream;

#include "J2ObjC_header.h"

@interface OrgBouncycastleAsn1ASN1Generator : NSObject {
 @public
  JavaIoOutputStream *_out_;
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (JavaIoOutputStream *)getRawOutputStream;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1ASN1Generator)

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1ASN1Generator, _out_, JavaIoOutputStream *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1ASN1Generator)

#endif // _OrgBouncycastleAsn1ASN1Generator_H_
