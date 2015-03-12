//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/eac/CertificateHolderReference.java
//

#ifndef _OrgBouncycastleAsn1EacCertificateHolderReference_H_
#define _OrgBouncycastleAsn1EacCertificateHolderReference_H_

@class IOSByteArray;

#include "J2ObjC_header.h"

@interface OrgBouncycastleAsn1EacCertificateHolderReference : NSObject {
}

- (instancetype)initWithNSString:(NSString *)countryCode
                    withNSString:(NSString *)holderMnemonic
                    withNSString:(NSString *)sequenceNumber;

- (instancetype)initWithByteArray:(IOSByteArray *)contents;

- (NSString *)getCountryCode;

- (NSString *)getHolderMnemonic;

- (NSString *)getSequenceNumber;

- (IOSByteArray *)getEncoded;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1EacCertificateHolderReference)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *OrgBouncycastleAsn1EacCertificateHolderReference_ReferenceEncoding_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1EacCertificateHolderReference, ReferenceEncoding_, NSString *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1EacCertificateHolderReference)

#endif // _OrgBouncycastleAsn1EacCertificateHolderReference_H_
