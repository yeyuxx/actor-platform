//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/util/Dump.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/FileInputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/System.h"
#include "org/bouncycastle/asn1/ASN1InputStream.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/util/ASN1Dump.h"
#include "org/bouncycastle/asn1/util/Dump.h"

@implementation OrgBouncycastleAsn1UtilDump

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  OrgBouncycastleAsn1UtilDump_mainWithNSStringArray_(args);
}

- (instancetype)init {
  return [super init];
}

@end

void OrgBouncycastleAsn1UtilDump_mainWithNSStringArray_(IOSObjectArray *args) {
  OrgBouncycastleAsn1UtilDump_init();
  JavaIoFileInputStream *fIn = [[JavaIoFileInputStream alloc] initWithNSString:IOSObjectArray_Get(nil_chk(args), 0)];
  OrgBouncycastleAsn1ASN1InputStream *bIn = [[OrgBouncycastleAsn1ASN1InputStream alloc] initWithJavaIoInputStream:fIn];
  id obj = nil;
  while ((obj = [bIn readObject]) != nil) {
    [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:OrgBouncycastleAsn1UtilASN1Dump_dumpAsStringWithId_(obj)];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1UtilDump)
