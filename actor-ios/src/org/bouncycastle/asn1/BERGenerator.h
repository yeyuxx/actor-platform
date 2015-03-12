//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/BERGenerator.java
//

#ifndef _OrgBouncycastleAsn1BERGenerator_H_
#define _OrgBouncycastleAsn1BERGenerator_H_

@class JavaIoInputStream;
@class JavaIoOutputStream;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Generator.h"

@interface OrgBouncycastleAsn1BERGenerator : OrgBouncycastleAsn1ASN1Generator {
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                   withInt:(jint)tagNo
                               withBoolean:(jboolean)isExplicit;

- (JavaIoOutputStream *)getRawOutputStream;

- (void)writeBERHeaderWithInt:(jint)tag;

- (void)writeBERBodyWithJavaIoInputStream:(JavaIoInputStream *)contentStream;

- (void)writeBEREnd;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1BERGenerator)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1BERGenerator)

#endif // _OrgBouncycastleAsn1BERGenerator_H_
