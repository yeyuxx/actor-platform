//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/util/Pack.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/util/Pack.h"

@implementation OrgBouncycastleUtilPack

+ (jint)bigEndianToIntWithByteArray:(IOSByteArray *)bs
                            withInt:(jint)off {
  return OrgBouncycastleUtilPack_bigEndianToIntWithByteArray_withInt_(bs, off);
}

+ (void)bigEndianToIntWithByteArray:(IOSByteArray *)bs
                            withInt:(jint)off
                       withIntArray:(IOSIntArray *)ns {
  OrgBouncycastleUtilPack_bigEndianToIntWithByteArray_withInt_withIntArray_(bs, off, ns);
}

+ (IOSByteArray *)intToBigEndianWithInt:(jint)n {
  return OrgBouncycastleUtilPack_intToBigEndianWithInt_(n);
}

+ (void)intToBigEndianWithInt:(jint)n
                withByteArray:(IOSByteArray *)bs
                      withInt:(jint)off {
  OrgBouncycastleUtilPack_intToBigEndianWithInt_withByteArray_withInt_(n, bs, off);
}

+ (IOSByteArray *)intToBigEndianWithIntArray:(IOSIntArray *)ns {
  return OrgBouncycastleUtilPack_intToBigEndianWithIntArray_(ns);
}

+ (void)intToBigEndianWithIntArray:(IOSIntArray *)ns
                     withByteArray:(IOSByteArray *)bs
                           withInt:(jint)off {
  OrgBouncycastleUtilPack_intToBigEndianWithIntArray_withByteArray_withInt_(ns, bs, off);
}

+ (jlong)bigEndianToLongWithByteArray:(IOSByteArray *)bs
                              withInt:(jint)off {
  return OrgBouncycastleUtilPack_bigEndianToLongWithByteArray_withInt_(bs, off);
}

+ (void)bigEndianToLongWithByteArray:(IOSByteArray *)bs
                             withInt:(jint)off
                       withLongArray:(IOSLongArray *)ns {
  OrgBouncycastleUtilPack_bigEndianToLongWithByteArray_withInt_withLongArray_(bs, off, ns);
}

+ (IOSByteArray *)longToBigEndianWithLong:(jlong)n {
  return OrgBouncycastleUtilPack_longToBigEndianWithLong_(n);
}

+ (void)longToBigEndianWithLong:(jlong)n
                  withByteArray:(IOSByteArray *)bs
                        withInt:(jint)off {
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(n, bs, off);
}

+ (IOSByteArray *)longToBigEndianWithLongArray:(IOSLongArray *)ns {
  return OrgBouncycastleUtilPack_longToBigEndianWithLongArray_(ns);
}

+ (void)longToBigEndianWithLongArray:(IOSLongArray *)ns
                       withByteArray:(IOSByteArray *)bs
                             withInt:(jint)off {
  OrgBouncycastleUtilPack_longToBigEndianWithLongArray_withByteArray_withInt_(ns, bs, off);
}

+ (jint)littleEndianToIntWithByteArray:(IOSByteArray *)bs
                               withInt:(jint)off {
  return OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_(bs, off);
}

+ (void)littleEndianToIntWithByteArray:(IOSByteArray *)bs
                               withInt:(jint)off
                          withIntArray:(IOSIntArray *)ns {
  OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_withIntArray_(bs, off, ns);
}

+ (void)littleEndianToIntWithByteArray:(IOSByteArray *)bs
                               withInt:(jint)bOff
                          withIntArray:(IOSIntArray *)ns
                               withInt:(jint)nOff
                               withInt:(jint)count {
  OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_withIntArray_withInt_withInt_(bs, bOff, ns, nOff, count);
}

+ (IOSByteArray *)intToLittleEndianWithInt:(jint)n {
  return OrgBouncycastleUtilPack_intToLittleEndianWithInt_(n);
}

+ (void)intToLittleEndianWithInt:(jint)n
                   withByteArray:(IOSByteArray *)bs
                         withInt:(jint)off {
  OrgBouncycastleUtilPack_intToLittleEndianWithInt_withByteArray_withInt_(n, bs, off);
}

+ (IOSByteArray *)intToLittleEndianWithIntArray:(IOSIntArray *)ns {
  return OrgBouncycastleUtilPack_intToLittleEndianWithIntArray_(ns);
}

+ (void)intToLittleEndianWithIntArray:(IOSIntArray *)ns
                        withByteArray:(IOSByteArray *)bs
                              withInt:(jint)off {
  OrgBouncycastleUtilPack_intToLittleEndianWithIntArray_withByteArray_withInt_(ns, bs, off);
}

+ (jlong)littleEndianToLongWithByteArray:(IOSByteArray *)bs
                                 withInt:(jint)off {
  return OrgBouncycastleUtilPack_littleEndianToLongWithByteArray_withInt_(bs, off);
}

+ (void)littleEndianToLongWithByteArray:(IOSByteArray *)bs
                                withInt:(jint)off
                          withLongArray:(IOSLongArray *)ns {
  OrgBouncycastleUtilPack_littleEndianToLongWithByteArray_withInt_withLongArray_(bs, off, ns);
}

+ (IOSByteArray *)longToLittleEndianWithLong:(jlong)n {
  return OrgBouncycastleUtilPack_longToLittleEndianWithLong_(n);
}

+ (void)longToLittleEndianWithLong:(jlong)n
                     withByteArray:(IOSByteArray *)bs
                           withInt:(jint)off {
  OrgBouncycastleUtilPack_longToLittleEndianWithLong_withByteArray_withInt_(n, bs, off);
}

+ (IOSByteArray *)longToLittleEndianWithLongArray:(IOSLongArray *)ns {
  return OrgBouncycastleUtilPack_longToLittleEndianWithLongArray_(ns);
}

+ (void)longToLittleEndianWithLongArray:(IOSLongArray *)ns
                          withByteArray:(IOSByteArray *)bs
                                withInt:(jint)off {
  OrgBouncycastleUtilPack_longToLittleEndianWithLongArray_withByteArray_withInt_(ns, bs, off);
}

- (instancetype)init {
  return [super init];
}

@end

jint OrgBouncycastleUtilPack_bigEndianToIntWithByteArray_withInt_(IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  jint n = LShift32(IOSByteArray_Get(nil_chk(bs), off), 24);
  n |= LShift32((IOSByteArray_Get(bs, ++off) & (jint) 0xff), 16);
  n |= LShift32((IOSByteArray_Get(bs, ++off) & (jint) 0xff), 8);
  n |= (IOSByteArray_Get(bs, ++off) & (jint) 0xff);
  return n;
}

void OrgBouncycastleUtilPack_bigEndianToIntWithByteArray_withInt_withIntArray_(IOSByteArray *bs, jint off, IOSIntArray *ns) {
  OrgBouncycastleUtilPack_init();
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(ns))->size_; ++i) {
    *IOSIntArray_GetRef(ns, i) = OrgBouncycastleUtilPack_bigEndianToIntWithByteArray_withInt_(bs, off);
    off += 4;
  }
}

IOSByteArray *OrgBouncycastleUtilPack_intToBigEndianWithInt_(jint n) {
  OrgBouncycastleUtilPack_init();
  IOSByteArray *bs = [IOSByteArray newArrayWithLength:4];
  OrgBouncycastleUtilPack_intToBigEndianWithInt_withByteArray_withInt_(n, bs, 0);
  return bs;
}

void OrgBouncycastleUtilPack_intToBigEndianWithInt_withByteArray_withInt_(jint n, IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  *IOSByteArray_GetRef(nil_chk(bs), off) = (jbyte) (URShift32(n, 24));
  *IOSByteArray_GetRef(bs, ++off) = (jbyte) (URShift32(n, 16));
  *IOSByteArray_GetRef(bs, ++off) = (jbyte) (URShift32(n, 8));
  *IOSByteArray_GetRef(bs, ++off) = (jbyte) (n);
}

IOSByteArray *OrgBouncycastleUtilPack_intToBigEndianWithIntArray_(IOSIntArray *ns) {
  OrgBouncycastleUtilPack_init();
  IOSByteArray *bs = [IOSByteArray newArrayWithLength:4 * ((IOSIntArray *) nil_chk(ns))->size_];
  OrgBouncycastleUtilPack_intToBigEndianWithIntArray_withByteArray_withInt_(ns, bs, 0);
  return bs;
}

void OrgBouncycastleUtilPack_intToBigEndianWithIntArray_withByteArray_withInt_(IOSIntArray *ns, IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(ns))->size_; ++i) {
    OrgBouncycastleUtilPack_intToBigEndianWithInt_withByteArray_withInt_(IOSIntArray_Get(ns, i), bs, off);
    off += 4;
  }
}

jlong OrgBouncycastleUtilPack_bigEndianToLongWithByteArray_withInt_(IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  jint hi = OrgBouncycastleUtilPack_bigEndianToIntWithByteArray_withInt_(bs, off);
  jint lo = OrgBouncycastleUtilPack_bigEndianToIntWithByteArray_withInt_(bs, off + 4);
  return (LShift64((jlong) (hi & (jlong) 0xffffffffLL), 32)) | (jlong) (lo & (jlong) 0xffffffffLL);
}

void OrgBouncycastleUtilPack_bigEndianToLongWithByteArray_withInt_withLongArray_(IOSByteArray *bs, jint off, IOSLongArray *ns) {
  OrgBouncycastleUtilPack_init();
  for (jint i = 0; i < ((IOSLongArray *) nil_chk(ns))->size_; ++i) {
    *IOSLongArray_GetRef(ns, i) = OrgBouncycastleUtilPack_bigEndianToLongWithByteArray_withInt_(bs, off);
    off += 8;
  }
}

IOSByteArray *OrgBouncycastleUtilPack_longToBigEndianWithLong_(jlong n) {
  OrgBouncycastleUtilPack_init();
  IOSByteArray *bs = [IOSByteArray newArrayWithLength:8];
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(n, bs, 0);
  return bs;
}

void OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(jlong n, IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  OrgBouncycastleUtilPack_intToBigEndianWithInt_withByteArray_withInt_((jint) (URShift64(n, 32)), bs, off);
  OrgBouncycastleUtilPack_intToBigEndianWithInt_withByteArray_withInt_((jint) (n & (jlong) 0xffffffffLL), bs, off + 4);
}

IOSByteArray *OrgBouncycastleUtilPack_longToBigEndianWithLongArray_(IOSLongArray *ns) {
  OrgBouncycastleUtilPack_init();
  IOSByteArray *bs = [IOSByteArray newArrayWithLength:8 * ((IOSLongArray *) nil_chk(ns))->size_];
  OrgBouncycastleUtilPack_longToBigEndianWithLongArray_withByteArray_withInt_(ns, bs, 0);
  return bs;
}

void OrgBouncycastleUtilPack_longToBigEndianWithLongArray_withByteArray_withInt_(IOSLongArray *ns, IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  for (jint i = 0; i < ((IOSLongArray *) nil_chk(ns))->size_; ++i) {
    OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(IOSLongArray_Get(ns, i), bs, off);
    off += 8;
  }
}

jint OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_(IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  jint n = IOSByteArray_Get(nil_chk(bs), off) & (jint) 0xff;
  n |= LShift32((IOSByteArray_Get(bs, ++off) & (jint) 0xff), 8);
  n |= LShift32((IOSByteArray_Get(bs, ++off) & (jint) 0xff), 16);
  n |= LShift32(IOSByteArray_Get(bs, ++off), 24);
  return n;
}

void OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_withIntArray_(IOSByteArray *bs, jint off, IOSIntArray *ns) {
  OrgBouncycastleUtilPack_init();
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(ns))->size_; ++i) {
    *IOSIntArray_GetRef(ns, i) = OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_(bs, off);
    off += 4;
  }
}

void OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_withIntArray_withInt_withInt_(IOSByteArray *bs, jint bOff, IOSIntArray *ns, jint nOff, jint count) {
  OrgBouncycastleUtilPack_init();
  for (jint i = 0; i < count; ++i) {
    *IOSIntArray_GetRef(nil_chk(ns), nOff + i) = OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_(bs, bOff);
    bOff += 4;
  }
}

IOSByteArray *OrgBouncycastleUtilPack_intToLittleEndianWithInt_(jint n) {
  OrgBouncycastleUtilPack_init();
  IOSByteArray *bs = [IOSByteArray newArrayWithLength:4];
  OrgBouncycastleUtilPack_intToLittleEndianWithInt_withByteArray_withInt_(n, bs, 0);
  return bs;
}

void OrgBouncycastleUtilPack_intToLittleEndianWithInt_withByteArray_withInt_(jint n, IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  *IOSByteArray_GetRef(nil_chk(bs), off) = (jbyte) (n);
  *IOSByteArray_GetRef(bs, ++off) = (jbyte) (URShift32(n, 8));
  *IOSByteArray_GetRef(bs, ++off) = (jbyte) (URShift32(n, 16));
  *IOSByteArray_GetRef(bs, ++off) = (jbyte) (URShift32(n, 24));
}

IOSByteArray *OrgBouncycastleUtilPack_intToLittleEndianWithIntArray_(IOSIntArray *ns) {
  OrgBouncycastleUtilPack_init();
  IOSByteArray *bs = [IOSByteArray newArrayWithLength:4 * ((IOSIntArray *) nil_chk(ns))->size_];
  OrgBouncycastleUtilPack_intToLittleEndianWithIntArray_withByteArray_withInt_(ns, bs, 0);
  return bs;
}

void OrgBouncycastleUtilPack_intToLittleEndianWithIntArray_withByteArray_withInt_(IOSIntArray *ns, IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(ns))->size_; ++i) {
    OrgBouncycastleUtilPack_intToLittleEndianWithInt_withByteArray_withInt_(IOSIntArray_Get(ns, i), bs, off);
    off += 4;
  }
}

jlong OrgBouncycastleUtilPack_littleEndianToLongWithByteArray_withInt_(IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  jint lo = OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_(bs, off);
  jint hi = OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_(bs, off + 4);
  return (LShift64((jlong) (hi & (jlong) 0xffffffffLL), 32)) | (jlong) (lo & (jlong) 0xffffffffLL);
}

void OrgBouncycastleUtilPack_littleEndianToLongWithByteArray_withInt_withLongArray_(IOSByteArray *bs, jint off, IOSLongArray *ns) {
  OrgBouncycastleUtilPack_init();
  for (jint i = 0; i < ((IOSLongArray *) nil_chk(ns))->size_; ++i) {
    *IOSLongArray_GetRef(ns, i) = OrgBouncycastleUtilPack_littleEndianToLongWithByteArray_withInt_(bs, off);
    off += 8;
  }
}

IOSByteArray *OrgBouncycastleUtilPack_longToLittleEndianWithLong_(jlong n) {
  OrgBouncycastleUtilPack_init();
  IOSByteArray *bs = [IOSByteArray newArrayWithLength:8];
  OrgBouncycastleUtilPack_longToLittleEndianWithLong_withByteArray_withInt_(n, bs, 0);
  return bs;
}

void OrgBouncycastleUtilPack_longToLittleEndianWithLong_withByteArray_withInt_(jlong n, IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  OrgBouncycastleUtilPack_intToLittleEndianWithInt_withByteArray_withInt_((jint) (n & (jlong) 0xffffffffLL), bs, off);
  OrgBouncycastleUtilPack_intToLittleEndianWithInt_withByteArray_withInt_((jint) (URShift64(n, 32)), bs, off + 4);
}

IOSByteArray *OrgBouncycastleUtilPack_longToLittleEndianWithLongArray_(IOSLongArray *ns) {
  OrgBouncycastleUtilPack_init();
  IOSByteArray *bs = [IOSByteArray newArrayWithLength:8 * ((IOSLongArray *) nil_chk(ns))->size_];
  OrgBouncycastleUtilPack_longToLittleEndianWithLongArray_withByteArray_withInt_(ns, bs, 0);
  return bs;
}

void OrgBouncycastleUtilPack_longToLittleEndianWithLongArray_withByteArray_withInt_(IOSLongArray *ns, IOSByteArray *bs, jint off) {
  OrgBouncycastleUtilPack_init();
  for (jint i = 0; i < ((IOSLongArray *) nil_chk(ns))->size_; ++i) {
    OrgBouncycastleUtilPack_longToLittleEndianWithLong_withByteArray_withInt_(IOSLongArray_Get(ns, i), bs, off);
    off += 8;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleUtilPack)
